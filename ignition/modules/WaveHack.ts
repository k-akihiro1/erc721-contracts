import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const WaveHackModule = buildModule("WaveHackModule", (m) => {
  const waveHack = m.contract("WaveHack");

  return { waveHack };
});

export default WaveHackModule;
