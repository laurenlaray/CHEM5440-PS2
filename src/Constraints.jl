function regulatory_constraints(constraint, oxygen)
# setup constraint array
constraint_array = ones(142,1)


if constraint == 1
  # set ArcA, FnR, and other regulators/conditions
  if oxygen == 0
  ArcA = 1
  Fnr = 1
  else
  ArcA = 0
  Fnr = 0
  end

  succ = 0
  fum = 0
  mal =
  glc_D = 1
  ac = 0
  growth = 1
  nh4 = 1
  pi = 1
  lac = 0
  fru = 0
  TKT2 = 0
  FBP = 0
  TALA = 0
  PGI = 0
  ME1 = 1
  ME2 = 1
  glu_L = 0

  DcuS = 0
  DcuR = 0
  FadR = 1
  Fis = 1
  surplusFDP = 1
  surplusPYR = 0
  FruR = 0
  GlcC = 0
  GlnG = 0
  NRI_low = 0
  NRI_high = 0
  PhoR = 0
  IclR = 1
  Mlc = 0
  Nac = 0
  PdhR = 1
  PhoB = 0
  CRPnoGLC = 0
  CRPnoGLM = 0


  # create Boolean code to represent the regulatory rule for each reaction
  constraint_array[1] = max(1-oxygen, min(oxygen, FruR), Fis)
  constraint_array[2] = max(1-oxygen, min(oxygen, FruR), Fis)
  constraint_array[5] = max(CRPnoGLC,Fnr)
  constraint_array[6] = max(CRPnoGLC,Fnr)
  constraint_array[18] = max(1-oxygen, min(oxygen, FruR), Fis)
  constraint_array[19] = max(1-oxygen, min(oxygen, FruR), Fis)
  constraint_array[28] = max(1-Fnr, ArcA)
  constraint_array[29] = max(min(1-ArcA,GlcC), 1-ArcA)
  constraint_array[30] = max(min(1-ArcA,GlcC), 1-ArcA)
  constraint_array[65] = max(ArcA, min(CRPnoGLC, Fnr))
  constraint_array[66] = max(ArcA, min(CRPnoGLC, Fnr))
  constraint_array[67] = max(Fnr, DcuR)
  constraint_array[68] = max(CRPnoGLM, 1-Mlc)
  constraint_array[69] = max(1-max(ArcA,Fnr), Fnr, CRPnoGLC, DcuR, 1-ArcA)
  constraint_array[70] = max(1-max(ArcA,Fnr), Fnr, CRPnoGLC, DcuR, 1-ArcA)
  constraint_array[71] = min(CRPnoGLM, 1-ArcA, DcuR)
  constraint_array[76] = max(CRPnoGLM, 1-Mlc)
  constraint_array[77] = 1-CRPnoGLC
  constraint_array[79] = 1-max(Nac, glu_L)
  constraint_array[80] = 1-max(Nac, glu_L)
  constraint_array[81] = max(1-glc_D, min(nh4,1-CRPnoGLC))
  constraint_array[82] = 1-min(NRI_high,glu_L)
  constraint_array[90] = min(1-IclR, max(1-ArcA,Fnr))
  constraint_array[93] = max(min(1-IclR, max(1-ArcA,Fnr)),min(1-ArcA,GlcC))
  constraint_array[94] = min(CRPnoGLM, 1-ArcA, DcuR)
  constraint_array[95] = 1-ArcA
  constraint_array[96] = 1-ArcA
  constraint_array[99] = 1-min(ArcA,Fnr)
  constraint_array[107] = max(ArcA,max(Fnr,CRPnoGLC),max(ArcA,Fnr))
  constraint_array[115] = 1-PhoB
  constraint_array[116] = 1-PhoB
  constraint_array[119] = FruR
  constraint_array[122] = 1-FruR
  constraint_array[129] = min(CRPnoGLM,1-ArcA,DcuR)
  constraint_array[131] = max(1-max(ArcA,Fnr), CRPnoGLC, Fis)
end
  return constraint_array
end
