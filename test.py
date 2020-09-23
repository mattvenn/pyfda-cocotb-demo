import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge
import wave
import struct

@cocotb.test()
async def test(dut):
    clock = Clock(dut.clk, 10, units="us")
    cocotb.fork(clock.start())

    # open audio files for read and write
    audio_in = wave.open('hello.wav')
    audio_out = wave.open('out.wav', 'wb')
    audio_out.setnchannels(audio_in.getnchannels())
    audio_out.setsampwidth(audio_in.getsampwidth())
    audio_out.setframerate(audio_in.getframerate())

    nframes = audio_in.getnframes()
    print("sending %d frames" % nframes)
    
    # process the audio through the dut
    for i in range(nframes):
        frame = audio_in.readframes(1)
        val, = struct.unpack('h', frame)
        dut.data_in <= val 
        await RisingEdge(dut.clk)

        raw_out = struct.pack('h', dut.data_out.value.signed_integer)
        audio_out.writeframes(raw_out)
