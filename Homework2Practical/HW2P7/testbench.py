import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def testbench(dut):
    dut.SR.value = 1
    dut.CP.value = 1
    dut.CET.value = 1
    dut.PE.value = 1
    for cycle in range(10):
        dut.CP.value = 0
        await Timer(1, units="ns")
        dut.CP.value = 1
        await Timer(1, units="ns")
        dut._log.info("count is %s", dut.count)