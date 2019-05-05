/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT, Thu Mar 14 01:12:54 2019
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00006282 (25218)
 *     Revision         0x02
 *     Checksum         0x01
 *     OEM ID           "INTEL"
 *     OEM Table ID     "BXT-SOC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20150619 (538248729)
 */
DefinitionBlock ("", "DSDT", 2, "INTEL", "yfw-MRB", 0x00000000)
{
    External (MDBG, IntObj)

    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (SP1O, 0x4E)
    Name (PMBS, 0x0400)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PMCB, 0xFED03000)
    Name (IBAS, 0xFED08000)
    Name (SRCB, 0xFED1C000)
    Name (HPTB, 0xFED00000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x02)
    Name (DSLC, 0x03)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x2B)
    Name (SOOT, 0x35)
    Name (ESCS, 0x48)
    Name (SDGV, 0x1C)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (GRBM, 0x0F)
    Name (MNHL, 0x05)
    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    OperationRegion (GNVS, SystemMemory, 0x7AEDFF90, 0x006E)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        RSV1,   8, 
        RSV2,   8, 
        MPEN,   8, 
        BDID,   8, 
        ASLB,   32, 
        NHLA,   32, 
        NHLL,   32, 
        GP0A,   32, 
        GP0L,   32, 
        GP1A,   32, 
        GP1L,   32, 
        GP2A,   32, 
        GP2L,   32, 
        GP3A,   32, 
        GP3L,   32, 
        DD1A,   32, 
        DD1L,   32, 
        DD3A,   32, 
        DD3L,   32, 
        BMDA,   32, 
        BMIA,   32, 
        P2BA,   32, 
        RSV3,   8, 
        STEP,   8, 
        RPA1,   32, 
        RPA2,   32, 
        RPA3,   32, 
        RPA4,   32, 
        RPA5,   32, 
        RPA6,   32, 
        M32B,   32, 
        M32L,   32
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x12)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x000EFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x000FFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x03, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKE, 
                Zero
            }
        })
        Name (AR00, Package (0x24)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                One, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0x000EFFFF, 
                Zero, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0x000FFFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x03, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                One, 
                Zero, 
                0x0D
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                One, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                0x02, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                0x03, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                Zero, 
                0x04
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                Zero, 
                0x05
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                Zero, 
                0x06
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                Zero, 
                0x07
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                One, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                0x02, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x03
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x14
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKG, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x16
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x17
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Device (VLVC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x48), 
                    MHEN,   1, 
                        ,   14, 
                    MHBR,   24, 
                    Offset (0xB0), 
                    BDSM,   32, 
                    BGSM,   32, 
                    Offset (0xBC), 
                    TOLD,   32
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RES0, \_SB.PCI0._Y00._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y00._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y00._LEN, M1LN)  // _LEN: Length
                M1LN = M32L /* \M32L */
                M1MN = M32B /* \M32B */
                M1MX = ((M1MN + M1LN) - One)
                CreateDWordField (RES0, \_SB.PCI0._Y01._MIN, GSMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._MAX, GSMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._LEN, GSLN)  // _LEN: Length
                GSMN = ^VLVC.BDSM /* \_SB_.PCI0.VLVC.BDSM */
                GSMX = (^VLVC.TOLD & 0xFFFFF000)
                GSMX--
                GSLN = ((GSMX - GSMN) + One)
                CreateDWordField (RES0, \_SB.PCI0._Y02._MIN, GDMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._MAX, GDMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._LEN, GDLN)  // _LEN: Length
                GDMN = ^VLVC.BGSM /* \_SB_.PCI0.VLVC.BGSM */
                GDMX = (^VLVC.BDSM & 0xFFFFF000)
                GDMX--
                GDLN = ((GDMX - GDMN) + One)
                CreateDWordField (RES0, \_SB.PCI0._Y03._LEN, LGR1)  // _LEN: Length
                CreateDWordField (RES0, \_SB.PCI0._Y04._LEN, LGR2)  // _LEN: Length
                CreateDWordField (RES0, \_SB.PCI0._Y05._LEN, LGR3)  // _LEN: Length
                LGR1 = Zero
                LGR2 = Zero
                LGR3 = Zero
                Return (RES0) /* \_SB_.PCI0.RES0 */
            }

            Name (RES0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0077,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x006F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0070,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0078,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0C80,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x3BE00000,         // Range Minimum
                    0x3FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x04200000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x3BE00000,         // Range Minimum
                    0x3FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x04200000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xBFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x40000000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xE0000000,         // Range Minimum
                    0xEFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x10000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }
        }
    }

    Scope (_SB)
    {
        Method (GPC0, 1, Serialized)
        {
            Local0 = Arg0
            OperationRegion (PDW0, SystemMemory, (P2BA | Local0), 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP) /* \_SB_.GPC0.TEMP */
        }

        Method (SPC0, 2, Serialized)
        {
            Local0 = Arg0
            OperationRegion (PDW0, SystemMemory, (P2BA | Local0), 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = Arg1
        }

        Method (GPC1, 1, Serialized)
        {
            Local0 = (Arg0 + 0x04)
            OperationRegion (PDW1, SystemMemory, (P2BA | Local0), 0x04)
            Field (PDW1, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP) /* \_SB_.GPC1.TEMP */
        }

        Method (SPC1, 2, Serialized)
        {
            Local0 = (Arg0 + 0x04)
            OperationRegion (PDW1, SystemMemory, (P2BA | Local0), 0x04)
            Field (PDW1, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = Arg1
        }

        Method (GGIV, 1, Serialized)
        {
            Local0 = Arg0
            OperationRegion (PDW0, SystemMemory, (P2BA | Local0), 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   1, 
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP) /* \_SB_.GGIV.TEMP */
        }

        Method (GGOV, 1, Serialized)
        {
            Local0 = Arg0
            OperationRegion (PDW0, SystemMemory, (P2BA | Local0), 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP) /* \_SB_.GGOV.TEMP */
        }

        Method (SGOV, 2, Serialized)
        {
            Local0 = Arg0
            OperationRegion (PDW0, SystemMemory, (P2BA | Local0), 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x46)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PWBS,   1, 
            Offset (0x20), 
                ,   13, 
            PMEB,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
                ,   3, 
            RP3S,   1, 
            PSCI,   1, 
            SCIS,   1, 
                ,   1, 
            RP1S,   1, 
            RP2S,   1
        }

        OperationRegion (PMCR, SystemMemory, (DD1A + 0x1000), 0x80)
        Field (PMCR, DWordAcc, Lock, Preserve)
        {
            Offset (0x34), 
                ,   22, 
            RP2D,   1, 
            RP1D,   1, 
            Offset (0x38), 
                ,   3, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1
        }
    }

    Scope (_SB.PCI0)
    {
        Device (LPCB)
        {
            Name (_ADR, 0x001F0000)  // _ADR: Address
            OperationRegion (LPC, PCI_Config, Zero, 0x0100)
            Field (LPC, AnyAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                CDID,   16, 
                Offset (0x08), 
                CRID,   8, 
                Offset (0x80), 
                IOD0,   8, 
                IOD1,   8, 
                Offset (0xA0), 
                    ,   9, 
                PRBL,   1, 
                Offset (0xAC), 
                Offset (0xAD), 
                Offset (0xAE), 
                XUSB,   1, 
                Offset (0xB8), 
                    ,   22, 
                GR0B,   2, 
                Offset (0xBC), 
                    ,   2, 
                GR19,   2, 
                Offset (0xC0)
            }
        }

        Device (RP01)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA1 != Zero))
                {
                    Return (RPA1) /* \RPA1 */
                }
                Else
                {
                    Return (0x00140000)
                }
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04) /* \_SB_.AR04 */
                }

                Return (PR04) /* \_SB_.PR04 */
            }
        }

        Device (RP02)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA2 != Zero))
                {
                    Return (RPA2) /* \RPA2 */
                }
                Else
                {
                    Return (0x00140001)
                }
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x08, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05) /* \_SB_.AR05 */
                }

                Return (PR05) /* \_SB_.PR05 */
            }
        }

        Device (RP03)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA3 != Zero))
                {
                    Return (RPA3) /* \RPA3 */
                }
                Else
                {
                    Return (0x00130000)
                }
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04) /* \_SB_.AR04 */
                }

                Return (PR04) /* \_SB_.PR04 */
            }
        }

        Device (RP04)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA4 != Zero))
                {
                    Return (RPA4) /* \RPA4 */
                }
                Else
                {
                    Return (0x00130001)
                }
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05) /* \_SB_.AR05 */
                }

                Return (PR05) /* \_SB_.PR05 */
            }
        }

        Device (RP05)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA5 != Zero))
                {
                    Return (RPA5) /* \RPA5 */
                }
                Else
                {
                    Return (0x00130002)
                }
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06) /* \_SB_.AR06 */
                }

                Return (PR06) /* \_SB_.PR06 */
            }
        }

        Device (RP06)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA6 != Zero))
                {
                    Return (RPA6) /* \RPA6 */
                }
                Else
                {
                    Return (0x00130003)
                }
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02) // Device Wake
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x09, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07) /* \_SB_.AR07 */
                }

                Return (PR07) /* \_SB_.PR07 */
            }
        }

        Scope (\_SB.PCI0)
        {
            Device (SATA)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                Device (PRT0)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                }

                Device (PRT1)
                {
                    Name (_ADR, 0x0001FFFF)  // _ADR: Address
                }

                OperationRegion (SATR, PCI_Config, 0x74, 0x04)
                Field (SATR, WordAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    PMEE,   1, 
                        ,   6, 
                    PMES,   1
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    PMEE = One
                    Return (0x0F)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        PMEE = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        PMEE = One
                    }
                    Else
                    {
                        PMEE = Zero
                    }
                }
            }
        }

        Device (XHC)
        {
            Name (_ADR, 0x00150000)  // _ADR: Address
            Name (_DDN, "Broxton XHCI controller (Host only)")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("Broxton XHCI controller (Host only)"))  // _STR: Description String
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x04
            })
            OperationRegion (USBR, PCI_Config, 0x74, 0x04)
            Field (USBR, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (TPLD, 2, Serialized)
                {
                    Name (PCKG, Package (0x01)
                    {
                        Buffer (0x14){}
                    })
                    CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                    REV = One
                    CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                    VISI = Arg0
                    CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                    GPOS = Arg1
                    CreateField (DerefOf (PCKG [Zero]), 0x80, 0x20, VHOS)
                    VHOS = 0xFFFFFFFF
                    CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                    SHAP = One
                    CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                    WID = 0x08
                    CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                    HGT = 0x03
                    Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.TPLD.PCKG */
                }

                Method (TUPC, 1, Serialized)
                {
                    Name (PCKG, Package (0x04)
                    {
                        One, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    PCKG [One] = Arg0
                    Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.TUPC.PCKG */
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, One))
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS02._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS02._PLD.PLDP */
                    }
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS03._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS03._PLD.PLDP */
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS04._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS04._PLD.PLDP */
                    }
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS05._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS05._PLD.PLDP */
                    }
                }

                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS06._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS06._PLD.PLDP */
                    }
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS07._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS07._PLD.PLDP */
                    }
                }

                Device (HS08)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS08._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS08._PLD.PLDP */
                    }

                    Device (FCAM)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS08.FCAM._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x60, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,  // `.......
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS08.FCAM._PLD.PLDP */
                        }
                    }
                }

                Device (SSP1)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, One))
                    }
                }

                Device (SSP2)
                {
                    Name (_ADR, 0x0A)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP2._PLD.PLDP */
                    }
                }

                Device (SSP3)
                {
                    Name (_ADR, 0x0B)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP3._PLD.PLDP */
                    }
                }

                Device (SSP4)
                {
                    Name (_ADR, 0x0C)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP4._PLD.PLDP */
                    }
                }

                Device (SSP5)
                {
                    Name (_ADR, 0x0D)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP5._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP5._PLD.PLDP */
                    }
                }

                Device (SSP6)
                {
                    Name (_ADR, 0x0E)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP6._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP6._PLD.PLDP */
                    }
                }

                Device (SSP7)
                {
                    Name (_ADR, 0x0F)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP7._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP7._PLD.PLDP */
                    }
                }
            }
        }

        Name (XDCE, One)
        Scope (\_SB.PCI0)
        {
            Device (XDCI)
            {
                Name (_ADR, 0x00150001)  // _ADR: Address
                OperationRegion (OTGD, PCI_Config, Zero, 0x0100)
                Field (OTGD, DWordAcc, NoLock, Preserve)
                {
                    DVID,   16, 
                    Offset (0x10), 
                    XDCB,   64
                }

                Field (OTGD, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x74), 
                    D0I3,   2, 
                    Offset (0x75), 
                    PMEE,   1, 
                        ,   6, 
                    PMES,   1
                }

                Name (_DDN, "Broxton XDCI controller")  // _DDN: DOS Device Name
                Name (_STR, Unicode ("Broxton XDCI controller"))  // _STR: Description String
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x03)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0C, 
                    0x04
                })
                Method (XDBA, 0, NotSerialized)
                {
                    Return ((XDCB & 0xFFFFFFFFFFFFFF00))
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    ADBG ("XDCI DSM")
                    If ((Arg0 == ToUUID ("732b85d5-b7a7-4a1b-9ba0-4bbd00ffd511")))
                    {
                        If ((Arg1 == One))
                        {
                            Method (SPPS, 2, Serialized)
                            {
                                OperationRegion (XDBW, SystemMemory, XDBA (), 0x00110000)
                                Field (XDBW, WordAcc, NoLock, Preserve)
                                {
                                    Offset (0x10F810), 
                                    Offset (0x10F811), 
                                    U2CP,   2, 
                                    U3CP,   2, 
                                    Offset (0x10F818), 
                                    PUPS,   2, 
                                        ,   1, 
                                    PURC,   1, 
                                    Offset (0x10F81A), 
                                    Offset (0x10F81C), 
                                        ,   3, 
                                    UXPE,   2, 
                                    Offset (0x10F81E)
                                }

                                Local1 = Arg0
                                Local2 = Arg1
                                If ((Local1 == Zero))
                                {
                                    ADBG ("PMU D0")
                                    UXPE = Zero
                                    Local0 = Zero
                                    While ((Local0 < 0x0A))
                                    {
                                        Stall (0x64)
                                        Local0++
                                    }

                                    PUPS = Zero
                                    Local0 = Zero
                                    While ((Local0 < 0x07D0))
                                    {
                                        Stall (0x64)
                                        If (((U2CP == Zero) && (U3CP == Zero)))
                                        {
                                            Break
                                        }

                                        Local0++
                                    }

                                    If ((U2CP != Zero))
                                    {
                                        ADBG ("U2 not in D0")
                                    }

                                    If ((U3CP != Zero))
                                    {
                                        ADBG ("U3 not in D0")
                                    }

                                    Return (Zero)
                                }

                                If ((Local1 == 0x03))
                                {
                                    ADBG ("PMU D3")
                                    If ((U2CP != Zero))
                                    {
                                        ADBG ("U2 not in D0")
                                    }

                                    If ((U3CP != Zero))
                                    {
                                        ADBG ("U3 not in D0")
                                    }

                                    PUPS = 0x03
                                    Local0 = Zero
                                    While ((Local0 < 0x07D0))
                                    {
                                        Stall (0x64)
                                        If (((U2CP == 0x03) && (U3CP == 0x03)))
                                        {
                                            Break
                                        }

                                        Local0++
                                    }

                                    If ((U2CP != 0x03))
                                    {
                                        ADBG ("U2 not in D3")
                                    }

                                    If ((U3CP != 0x03))
                                    {
                                        ADBG ("U3 not in D3")
                                    }

                                    UXPE = Local2
                                    Return (Zero)
                                }

                                Return (Zero)
                            }

                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    ADBG ("XDCI Fn0")
                                    Return (Buffer (One)
                                    {
                                         0xFB                                             // .
                                    })
                                }
                                Case (One)
                                {
                                    ADBG ("XDCI Fn1")
                                    Return (One)
                                }
                                Case (0x03)
                                {
                                    ADBG ("XDCI Fn3")
                                    Return (XDCE) /* \_SB_.PCI0.XDCE */
                                }
                                Case (0x04)
                                {
                                    ADBG ("XDCI Fn4")
                                    Local1 = DerefOf (Arg3 [Zero])
                                    ADBG (Local1)
                                    SPPS (Local1, Zero)
                                }
                                Case (0x05)
                                {
                                    ADBG ("XDCI Fn5")
                                    Return (Zero)
                                }
                                Case (0x06)
                                {
                                    ADBG ("XDCI Fn6")
                                    OperationRegion (XDBD, SystemMemory, XDBA (), 0x00110000)
                                    Field (XDBD, DWordAcc, NoLock, Preserve)
                                    {
                                        Offset (0xC704), 
                                            ,   30, 
                                        CSFR,   1, 
                                        Offset (0xC708)
                                    }

                                    OperationRegion (XDW2, SystemMemory, XDBA (), 0x00110000)
                                    Field (XDW2, WordAcc, NoLock, Preserve)
                                    {
                                        Offset (0x10F820), 
                                            ,   13, 
                                        OTHC,   1
                                    }

                                    If ((OTHC == Zero))
                                    {
                                        CSFR = One
                                        Local0 = Zero
                                        While ((Local0 < 0x64))
                                        {
                                            If ((CSFR == Zero))
                                            {
                                                Break
                                            }

                                            Sleep (One)
                                        }
                                    }

                                    Return (Zero)
                                }
                                Case (0x07)
                                {
                                    ADBG ("XDCI Fn7")
                                    OperationRegion (XD22, SystemMemory, XDBA (), 0x00110000)
                                    Field (XD22, WordAcc, NoLock, Preserve)
                                    {
                                        Offset (0x10F818), 
                                        P2PS,   2, 
                                        Offset (0x10F81A)
                                    }

                                    Local0 = P2PS /* \_SB_.PCI0.XDCI._DSM.P2PS */
                                    Return (Local0)
                                }

                            }
                        }
                    }

                    Return (Zero)
                }
            }
        }

        Name (EMMS, Zero)
        Scope (\_SB.PCI0)
        {
            OperationRegion (IPCR, SystemMemory, DD1A, 0xA0)
            Field (IPCR, DWordAcc, NoLock, Preserve)
            {
                ICMD,   32, 
                IRDY,   1, 
                IERR,   1, 
                Offset (0x06), 
                IERC,   8, 
                Offset (0x80), 
                IWB0,   32, 
                IWB1,   32, 
                Offset (0x90), 
                IRB0,   32
            }

            Method (IPCM, 3, Serialized)
            {
                Local0 = Zero
                Local0 |= ((Arg0 & 0xFF) << Zero)
                Local0 |= ((Arg1 & 0x0F) << 0x0C)
                Local0 |= ((Arg2 & 0xFF) << 0x10)
                While (IRDY)
                {
                    Sleep (One)
                }

                ICMD = Local0
                While (IRDY)
                {
                    Sleep (One)
                }

                If (IERR){}
                Return (IERC) /* \_SB_.PCI0.IERC */
            }

            Method (TSTM, 3, Serialized)
            {
                Name (TSTC, 0xE4)
                If ((Arg2 == Zero))
                {
                    Local0 = One
                }
                ElseIf ((Arg2 == One))
                {
                    Local0 = 0x08
                }
                Else
                {
                    Return (Zero)
                }

                Switch (ToInteger (Arg0))
                {
                    Case (0x00A28008)
                    {
                        IWB0 = 0x05
                    }
                    Case (0x0824)
                    {
                        IWB0 = 0x04
                    }
                    Case (0x34)
                    {
                        IWB0 = 0x03
                    }
                    Case (0x0840)
                    {
                        IWB0 = 0x02
                    }
                    Case (0x0834)
                    {
                        IWB0 = One
                    }
                    Default
                    {
                        IWB0 = Zero
                    }

                }

                IWB1 = Arg1
                IPCM (TSTC, Arg2, Local0)
                Return (IRB0) /* \_SB_.PCI0.IRB0 */
            }

            OperationRegion (SBMM, SystemMemory, ((P2BA | 0x00D60000) | 0x0600), 0x18)
            Field (SBMM, DWordAcc, NoLock, Preserve)
            {
                GENR,   32, 
                Offset (0x08), 
                    ,   5, 
                GRR3,   1
            }

            Method (SCPG, 2, Serialized)
            {
                Name (TMP, Zero)
                If ((Arg0 == One))
                {
                    TMP = GENR /* \_SB_.PCI0.GENR */
                    GENR = (TMP | Arg1)
                }
                ElseIf ((Arg0 == Zero))
                {
                    TMP = GENR /* \_SB_.PCI0.GENR */
                    GENR = (TMP & Arg1)
                }
            }

            Device (SDHA)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Name (_DDN, "Intel(R) eMMC Controller - 80865ACC")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                OperationRegion (PMCS, PCI_Config, 0x84, 0x04)
                Field (PMCS, WordAcc, NoLock, Preserve)
                {
                    PMSR,   32
                }

                OperationRegion (SCPC, PCI_Config, 0xA0, 0x04)
                Field (SCPC, WordAcc, NoLock, Preserve)
                {
                        ,   17, 
                    I3EN,   1, 
                    DPGE,   1
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.SDHA.RBUF */
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    DPGE = Zero
                    I3EN = Zero
                    SCPG (Zero, 0xFFFFFFBE)
                    Sleep (0x02)
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Local1 = (TSTM (0x0840, Zero, Zero) & 0x1F)
                    If (Local1)
                    {
                        Local2 = TSTM (0x0834, Zero, Zero)
                        Local3 = ((Local2 & 0x3F00) >> 0x08)
                        Local3 += (Local1 * 0x02)
                        Local2 = ((Local2 & 0xFFFFFF80) | (Local3 & 0x7F))
                        TSTM (0x0834, Local2, One)
                    }

                    DPGE = One
                    I3EN = One
                    SCPG (One, 0x41)
                    ADBG ("EMMC D3 WA")
                    Local0 = PMSR /* \_SB_.PCI0.SDHA.PMSR */
                    Local0 &= One
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61")))
                    {
                        If ((Arg1 == Zero))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    If ((EMMS == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x61                                             // a
                                        })
                                    }
                                    ElseIf ((EMMS == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x21                                             // !
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x01                                             // .
                                        })
                                    }
                                }
                                Case (0x05)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Case (0x06)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                            }

                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    ElseIf ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        If ((Arg2 == 0x09))
                        {
                            If ((Arg1 == 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    Zero, 
                                    Ones, 
                                    Ones, 
                                    Ones, 
                                    Ones
                                })
                            }
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Device (EMMD)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }

            Device (UFSH)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_DDN, "Intel(R) UFS Controller - 80865ACE")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                OperationRegion (PMCS, PCI_Config, 0x84, 0x04)
                Field (PMCS, WordAcc, NoLock, Preserve)
                {
                    PMSR,   32
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    ADBG ("UFS D3 WA")
                    Local0 = PMSR /* \_SB_.PCI0.UFSH.PMSR */
                    Local0 &= One
                }

                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.UFSH.RBUF */
                }

                Device (UFSD)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }

            Device (SDIO)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Name (_DDN, "Intel(R) SDIO Controller - 80865AD0")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (PSTS, Zero)
                OperationRegion (SCPC, PCI_Config, 0xA0, 0x04)
                Field (SCPC, WordAcc, NoLock, Preserve)
                {
                        ,   17, 
                    I3EN,   1, 
                    DPGE,   1
                }

                OperationRegion (PMCS, PCI_Config, 0x84, 0x04)
                Field (PMCS, WordAcc, NoLock, Preserve)
                {
                    PMSR,   32
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.SDIO.RBUF */
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    ADBG ("SDIO:PS0")
                    If ((PSTS == Zero))
                    {
                        ADBG ("SDIO D0 WA")
                        DPGE = Zero
                        I3EN = Zero
                        SCPG (Zero, 0xFFFFFEFE)
                        Sleep (0x02)
                        PSTS = One
                    }
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    ADBG ("SDIO:PS3")
                    If ((PSTS == One))
                    {
                        DPGE = One
                        I3EN = One
                        SCPG (One, 0x0101)
                        ADBG ("SDIO D3 WA")
                        Local0 = PMSR /* \_SB_.PCI0.SDIO.PMSR */
                        Local0 &= One
                        PSTS = Zero
                    }
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                }
            }

            Device (SDC)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Name (_DDN, "Intel(R) SD Card Controller - 80865ACA")  // _DDN: DOS Device Name
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (GDW0, Zero)
                Name (GDW1, Zero)
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001A
                            }
                        GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001A
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.SDC_._CRS.RBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                OperationRegion (SCPC, PCI_Config, 0xA0, 0x04)
                Field (SCPC, WordAcc, NoLock, Preserve)
                {
                        ,   17, 
                    I3EN,   1, 
                    DPGE,   1
                }

                OperationRegion (PCCS, PCI_Config, 0x84, 0x04)
                Field (PCCS, WordAcc, NoLock, Preserve)
                {
                    PMSR,   32
                }

                OperationRegion (SCGI, SystemMemory, (GP3A | 0x0100), 0x10)
                Field (SCGI, DWordAcc, NoLock, Preserve)
                {
                    GPIS,   32
                }

                OperationRegion (SCGP, SystemMemory, (GP3A | 0x05D0), 0x2C)
                Field (SCGP, DWordAcc, NoLock, Preserve)
                {
                        ,   1, 
                    RXST,   1, 
                        ,   23, 
                    RXEV,   2, 
                    Offset (0x20), 
                    GPOV,   1
                }

                Method (WAK, 0, Serialized)
                {
                    If ((GPIS == 0x04000000))
                    {
                        GPIS = 0x04000000
                    }

                    SPC0 (0x00C005D0, GDW0)
                    SPC1 (0x00C005D0, GDW1)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    GRR3 = ~RXST /* \_SB_.PCI0.SDC_.RXST */
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    GRR3 = ~RXST /* \_SB_.PCI0.SDC_.RXST */
                    DPGE = Zero
                    I3EN = Zero
                    SCPG (Zero, 0xFFFFFBFE)
                    Sleep (0x02)
                    SCPG (One, 0x0401)
                    If ((BDID == GRBM))
                    {
                        GPOV = One
                    }
                    Else
                    {
                        GPOV = Zero
                    }

                    If (((GDW0 == Zero) && (RXEV == Zero)))
                    {
                        GDW0 = GPC0 (0x00C005D0)
                        GDW1 = GPC1 (0x00C005D0)
                    }
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If ((BDID == GRBM))
                    {
                        GPOV = Zero
                    }
                    Else
                    {
                        GPOV = One
                    }

                    If ((RXST == Zero))
                    {
                        TSTM (0x34, Zero, One)
                    }

                    Local1 = TSTM (0x0824, Zero, Zero)
                    Local1 &= 0xFEFF
                    TSTM (0x0824, Local1, One)
                    SCPG (One, 0x0401)
                    DPGE = One
                    I3EN = One
                    ADBG ("SDC D3 WA")
                    Local0 = PMSR /* \_SB_.PCI0.SDC_.PMSR */
                    Local0 &= One
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61")))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (Zero)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x19                                             // .
                                        })
                                    }

                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            Case (One)
                            {
                                Return (Zero)
                            }
                            Case (0x02)
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            Case (0x03)
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            Case (0x04)
                            {
                                If ((BDID == GRBM))
                                {
                                    GPOV = Zero
                                }
                                Else
                                {
                                    GPOV = One
                                }

                                Sleep (0x32)
                                If ((BDID == GRBM))
                                {
                                    GPOV = One
                                }
                                Else
                                {
                                    GPOV = Zero
                                }

                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            Case (0x05)
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                            Case (0x06)
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }

                        }

                        Return (Buffer (One)
                        {
                             0x01                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }
            }
        }

        Scope (\_SB.PCI0)
        {
            Device (PWM)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                Name (_DDN, "Intel(R) PWM Controller")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.PWM_.RBUF */
                }
            }

            Device (URT1)
            {
                Name (_ADR, 0x00180000)  // _ADR: Address
                Name (_DDN, "Intel(R) HS-UART Controller #1")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.URT1.RBUF */
                }
            }

            Device (URT2)
            {
                Name (_ADR, 0x00180001)  // _ADR: Address
                Name (_DDN, "Intel(R) HS-UART Controller #2")  // _DDN: DOS Device Name
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.URT2.RBUF */
                }
            }

            Device (URT3)
            {
                Name (_ADR, 0x00180002)  // _ADR: Address
                Name (_DDN, "Intel(R) HS-UART Controller #3")  // _DDN: DOS Device Name
                Name (_UID, 0x03)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.URT3.RBUF */
                }
            }

            Device (URT4)
            {
                Name (_ADR, 0x00180003)  // _ADR: Address
                Name (_DDN, "Intel(R) HS-UART Controller #4")  // _DDN: DOS Device Name
                Name (_UID, 0x04)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.URT4.RBUF */
                }
            }

            Device (SPI1)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Name (_DDN, "Intel(R) SPI Controller #1")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.SPI1.RBUF */
                }
            }

            Device (SPI2)
            {
                Name (_ADR, 0x00190001)  // _ADR: Address
                Name (_DDN, "Intel(R) SPI Controller #2")  // _DDN: DOS Device Name
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.SPI2.RBUF */
                }
            }

            Device (SPI3)
            {
                Name (_ADR, 0x00190002)  // _ADR: Address
                Name (_DDN, "Intel(R) SPI Controller #3")  // _DDN: DOS Device Name
                Name (_UID, 0x03)  // _UID: Unique ID
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.SPI3.RBUF */
                }
            }

            Device (I2C0)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #0")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C0")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC0S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC0S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C0.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C0.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C0.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C0.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C0.RBUF */
                }
            }

            Device (I2C1)
            {
                Name (_ADR, 0x00160001)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #1")  // _DDN: DOS Device Name
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C1")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC1S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC1S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C1.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C1.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C1.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C1.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C1.RBUF */
                }
            }

            Device (I2C2)
            {
                Name (_ADR, 0x00160002)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #2")  // _DDN: DOS Device Name
                Name (_UID, 0x03)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C2")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC2S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC2S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C2.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C2.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C2.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C2.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C2.RBUF */
                }
            }

            Device (I2C3)
            {
                Name (_ADR, 0x00160003)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #3")  // _DDN: DOS Device Name
                Name (_UID, 0x04)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C3")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC3S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC3S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C3.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C3.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C3.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C3.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C3.RBUF */
                }
            }

            Device (I2C4)
            {
                Name (_ADR, 0x00170000)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #4")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C4")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC4S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC4S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C4.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C4.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C4.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C4.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C4.RBUF */
                }
            }

            Device (I2C5)
            {
                Name (_ADR, 0x00170001)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #5")  // _DDN: DOS Device Name
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C5")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC5S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC5S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C5.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C5.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C5.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C5.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C5.RBUF */
                }
            }

            Device (I2C6)
            {
                Name (_ADR, 0x00170002)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #6")  // _DDN: DOS Device Name
                Name (_UID, 0x03)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C6")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC6S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC6S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C6.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C6.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C6.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C6.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C6.RBUF */
                }
            }

            Device (I2C7)
            {
                Name (_ADR, 0x00170003)  // _ADR: Address
                Name (_DDN, "Intel(R) I2C Controller #7")  // _DDN: DOS Device Name
                Name (_UID, 0x04)  // _UID: Unique ID
                Name (LINK, "\\_SB.PCI0.I2C7")
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Name (IC7S, 0x00061A80)
                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "clock-frequency", 
                            IC7S
                        }
                    }
                })
                Method (FMCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x64, 
                        0xD6, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C7.FMCN.PKG_ */
                }

                Method (FPCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x26, 
                        0x50, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C7.FPCN.PKG_ */
                }

                Method (HSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x05, 
                        0x18, 
                        0x0C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C7.HSCN.PKG_ */
                }

                Method (SSCN, 0, Serialized)
                {
                    Name (PKG, Package (0x03)
                    {
                        0x0244, 
                        0x02DA, 
                        0x1C
                    })
                    Return (PKG) /* \_SB_.PCI0.I2C7.SSCN.PKG_ */
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.I2C7.RBUF */
                }
            }
        }

        Name (ADFM, 0x2A)
        Name (ADPM, Zero)
        Name (AG1L, Zero)
        Name (AG1H, Zero)
        Name (AG2L, Zero)
        Name (AG2H, Zero)
        Name (AG3L, Zero)
        Name (AG3H, Zero)
        Device (HDAS)
        {
            Name (_ADR, 0x000E0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, Zero, 0x0100)
            Field (HDAR, ByteAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x48), 
                    ,   6, 
                MBCG,   1, 
                Offset (0x54), 
                Offset (0x55), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Name (NBUF, ResourceTemplate ()
            {
                QWordMemory (ResourceConsumer, PosDecode, MinNotFixed, MaxNotFixed, NonCacheable, ReadOnly,
                    0x0000000000000001, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y06, AddressRangeACPI, TypeStatic)
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0E, 
                0x03
            })
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG ("HD-A Ctrlr D0")
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG ("HD-A Ctrlr D3")
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                ADBG ("HDAS _INI")
                CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y06._MIN, NBAS)  // _MIN: Minimum Base Address
                CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y06._MAX, NMAS)  // _MAX: Maximum Base Address
                CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y06._LEN, NLEN)  // _LEN: Length
                NBAS = NHLA /* \NHLA */
                NMAS = (NHLA + (NHLL - One))
                NLEN = NHLL /* \NHLL */
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                ADBG ("HDAS _DSM")
                If ((Arg0 == ToUUID ("a69f886e-6ceb-4594-a41f-7b5dce24c553")))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }
                        Case (One)
                        {
                            ADBG ("_DSM Fun 1 NHLT")
                            Return (NBUF) /* \_SB_.PCI0.HDAS.NBUF */
                        }
                        Case (0x02)
                        {
                            ADBG ("_DSM Fun 2 FMSK")
                            Return (ADFM) /* \_SB_.PCI0.ADFM */
                        }
                        Case (0x03)
                        {
                            ADBG ("_DSM Fun 3 PPMS")
                            If ((Arg3 == ToUUID ("b489c2de-0f96-42e1-8a2d-c25b5091ee49")))
                            {
                                Return ((ADPM & One))
                            }

                            If ((Arg3 == ToUUID ("e1284052-8664-4fe4-a353-3878f72704c3")))
                            {
                                Return ((ADPM & 0x02))
                            }

                            If ((Arg3 == ToUUID ("7c708106-3aff-40fe-88be-8c999b3f7445")))
                            {
                                Return ((ADPM & 0x04))
                            }

                            If ((Arg3 == ToUUID ("e0e018a8-3550-4b54-a8d0-a8e05d0fcba2")))
                            {
                                Return ((ADPM & 0x08))
                            }

                            If ((Arg3 == ToUUID ("202badb5-8870-4290-b536-f2380c63f55d")))
                            {
                                Return ((ADPM & 0x10))
                            }

                            If ((Arg3 == ToUUID ("eb3fea76-394b-495d-a14d-8425092d5cb7")))
                            {
                                Return ((ADPM & 0x20))
                            }

                            If ((Arg3 == ToUUID ("f1c69181-329a-45f0-8eef-d8bddf81e036")))
                            {
                                Return ((ADPM & 0x40))
                            }

                            If ((Arg3 == ToUUID ("b3573eff-6441-4a75-91f7-4281eec4597d")))
                            {
                                Return ((ADPM & 0x80))
                            }

                            If ((Arg3 == ToUUID ("ec774fa9-28d3-424a-90e4-69f984f1eeb7")))
                            {
                                Return ((ADPM & 0x0100))
                            }

                            If ((Arg3 == ToUUID ("f101fef0-ff5a-4ad4-8710-43592a6f7948")))
                            {
                                Return ((ADPM & 0x0200))
                            }

                            If ((Arg3 == ToUUID ("f3578986-4400-4adf-ae7e-cd433cd3f26e")))
                            {
                                Return ((ADPM & 0x0400))
                            }

                            If ((Arg3 == ToUUID ("13b5e4d7-a91a-4059-8290-605b01ccb650")))
                            {
                                Return ((ADPM & 0x0800))
                            }

                            If ((Arg3 == ACCG (AG1L, AG1H)))
                            {
                                Return ((ADPM & 0x20000000))
                            }

                            If ((Arg3 == ACCG (AG2L, AG2H)))
                            {
                                Return ((ADPM & 0x40000000))
                            }

                            If ((Arg3 == ACCG (AG3L, AG3H)))
                            {
                                Return ((ADPM & 0x80000000))
                            }

                            Return (Zero)
                        }
                        Default
                        {
                            ADBG ("_DSM Fun NOK")
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }

                    }
                }

                ADBG ("_DSM UUID NOK")
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (ACCG, 2, Serialized)
            {
                Name (GBUF, Buffer (0x10){})
                Concatenate (Arg0, Arg1, GBUF) /* \_SB_.PCI0.HDAS.ACCG.GBUF */
                Return (GBUF) /* \_SB_.PCI0.HDAS.ACCG.GBUF */
            }
        }
    }

    Scope (_SB)
    {
        OperationRegion (ILBR, SystemMemory, IBAS, 0x8C)
        Field (ILBR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            PARC,   8, 
            PBRC,   8, 
            PCRC,   8, 
            PDRC,   8, 
            PERC,   8, 
            PFRC,   8, 
            PGRC,   8, 
            PHRC,   8, 
            Offset (0x88), 
                ,   4, 
            UI4E,   1
        }

        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PARC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLA, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLA, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PARC & 0x0F))
                Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PARC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PARC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PBRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLB, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLB, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PBRC & 0x0F))
                Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PBRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PBRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PCRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLC, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLC, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PCRC & 0x0F))
                Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PCRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PCRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PDRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLD, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLD, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PDRC & 0x0F))
                Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PDRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PDRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PERC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLE, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLE, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PERC & 0x0F))
                Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PERC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PERC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PFRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLF, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLF, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PFRC & 0x0F))
                Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PFRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PFRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PGRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLG, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLG, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PGRC & 0x0F))
                Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PGRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PGRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PHRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLH, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLH, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PHRC & 0x0F))
                Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PHRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PHRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Scope (\_SB)
        {
            Device (RTC)
            {
                Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    IO (Decode16,
                        0x0070,             // Range Minimum
                        0x0070,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        )
                    IRQNoFlags ()
                        {8}
                })
            }

            Device (HPET)
            {
                Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                    Return (RBUF) /* \_SB_.HPET._CRS.RBUF */
                }
            }
        }

        Device (IPIC)
        {
            Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0020,             // Range Minimum
                    0x0020,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0024,             // Range Minimum
                    0x0024,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0028,             // Range Minimum
                    0x0028,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x002C,             // Range Minimum
                    0x002C,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0030,             // Range Minimum
                    0x0030,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0034,             // Range Minimum
                    0x0034,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0038,             // Range Minimum
                    0x0038,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x003C,             // Range Minimum
                    0x003C,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00A0,             // Range Minimum
                    0x00A0,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00A4,             // Range Minimum
                    0x00A4,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00A8,             // Range Minimum
                    0x00A8,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00AC,             // Range Minimum
                    0x00AC,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00B0,             // Range Minimum
                    0x00B0,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00B4,             // Range Minimum
                    0x00B4,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00B8,             // Range Minimum
                    0x00B8,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00BC,             // Range Minimum
                    0x00BC,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x04D0,             // Range Minimum
                    0x04D0,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IRQNoFlags ()
                    {2}
            })
        }

        Device (LDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x002E,             // Range Minimum
                    0x002E,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x004E,             // Range Minimum
                    0x004E,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0061,             // Range Minimum
                    0x0061,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0063,             // Range Minimum
                    0x0063,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0065,             // Range Minimum
                    0x0065,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0067,             // Range Minimum
                    0x0067,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0080,             // Range Minimum
                    0x0080,             // Range Maximum
                    0x01,               // Alignment
                    0x10,               // Length
                    )
                IO (Decode16,
                    0x0092,             // Range Minimum
                    0x0092,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x00B2,             // Range Minimum
                    0x00B2,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0680,             // Range Minimum
                    0x0680,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                IO (Decode16,
                    0x0400,             // Range Minimum
                    0x0400,             // Range Maximum
                    0x01,               // Alignment
                    0x80,               // Length
                    )
                IO (Decode16,
                    0x0500,             // Range Minimum
                    0x0500,             // Range Maximum
                    0x01,               // Alignment
                    0xFF,               // Length
                    )
                IO (Decode16,
                    0x0600,             // Range Minimum
                    0x0600,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                IO (Decode16,
                    0x164E,             // Range Minimum
                    0x164E,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
            })
        }

        Device (TIMR)
        {
            Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0040,             // Range Minimum
                    0x0040,             // Range Maximum
                    0x01,               // Alignment
                    0x04,               // Length
                    )
                IO (Decode16,
                    0x0050,             // Range Minimum
                    0x0050,             // Range Maximum
                    0x10,               // Alignment
                    0x04,               // Length
                    )
                IRQNoFlags ()
                    {0}
            })
        }
    }

    Scope (_SB.PCI0)
    {
        Device (ISH0)
        {
            Name (_ADR, 0x00110000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000000, 0x00){}
        Processor (CPU1, 0x02, 0x00000000, 0x00){}
        Processor (CPU2, 0x03, 0x00000000, 0x00){}
        Processor (CPU3, 0x04, 0x00000000, 0x00){}
    }

    Name (ECUP, One)
    Mutex (EHLD, 0x00)
    Name (ADW1, Zero)
    Mutex (MUTX, 0x00)
    Method (ADBG, 1, Serialized)
    {
        If (CondRefOf (MDBG))
        {
            Return (MDBG) /* External reference */
        }

        Return (Zero)
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        PICM = Arg0
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8, 
        Offset (0x04), 
        G1E,    8, 
        Offset (0x0A), 
        G1S2,   8, 
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x34)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        G0S,    32, 
        Offset (0x30), 
        G0EN,   32
    }

    OperationRegion (PMCM, SystemMemory, (DD1A + 0x1000), 0x1000)
    Field (PMCM, ByteAcc, NoLock, Preserve)
    {
        Offset (0x94), 
        DHPD,   32
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        G1S3 = Ones
        G1S2 = Ones
        G1S = One
        G1E = One
        G0S = Ones
        \_SB.TPM.PTS (Arg0)
        ADW1 = \_SB.GPC1 (0x00C40728)
        ADW1 |= 0xFFFFC3FF
        ADW1 &= 0x1000
        \_SB.SPC1 (0x00C40728, ADW1)
    }

    Name (NEXP, One)
    Name (OSCC, Zero)
    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.SDC.WAK ()
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Method (NHPG, 0, Serialized)
            {
                ^RP01.HPEX = Zero
                ^RP02.HPEX = Zero
                ^RP03.HPEX = Zero
                ^RP04.HPEX = Zero
                ^RP05.HPEX = Zero
                ^RP06.HPEX = Zero
                ^RP01.HPSX = One
                ^RP02.HPSX = One
                ^RP03.HPSX = One
                ^RP04.HPSX = One
                ^RP05.HPSX = One
                ^RP06.HPSX = One
            }

            Method (NPME, 0, Serialized)
            {
                ^RP01.PMEX = Zero
                ^RP02.PMEX = Zero
                ^RP03.PMEX = Zero
                ^RP04.PMEX = Zero
                ^RP05.PMEX = Zero
                ^RP06.PMEX = Zero
                ^RP01.PMSX = One
                ^RP02.PMSX = One
                ^RP03.PMSX = One
                ^RP04.PMSX = One
                ^RP05.PMSX = One
                ^RP06.PMSX = One
            }
        }

        Device (GPO0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3452")  // _HID: Hardware ID
            Name (_CID, "INT3452")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) Controller - North")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (LINK, "\\_SB.GPO0")
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y07)
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                {
                    0x0000000E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GPO0._Y07._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GPO0._Y07._LEN, B0LN)  // _LEN: Length
                B0BA = GP0A /* \GP0A */
                B0LN = GP0L /* \GP0L */
                Return (RBUF) /* \_SB_.GPO0.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
            }

            OperationRegion (GPOP, SystemMemory, GP0A, GP0L)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Offset (0x578), 
                CWLE,   1, 
                Offset (0x5B0), 
                ODPW,   1
            }
        }

        Device (GPO1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3452")  // _HID: Hardware ID
            Name (_CID, "INT3452")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) Controller - Northwest")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y08)
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                {
                    0x0000000E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GPO1._Y08._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GPO1._Y08._LEN, B0LN)  // _LEN: Length
                B0BA = GP1A /* \GP1A */
                B0LN = GP1L /* \GP1L */
                Return (RBUF) /* \_SB_.GPO1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (GPO2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3452")  // _HID: Hardware ID
            Name (_CID, "INT3452")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) Controller - West")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y09)
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                {
                    0x0000000E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GPO2._Y09._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GPO2._Y09._LEN, B0LN)  // _LEN: Length
                B0BA = GP2A /* \GP2A */
                B0LN = GP2L /* \GP2L */
                Return (RBUF) /* \_SB_.GPO2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (GPO3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3452")  // _HID: Hardware ID
            Name (_CID, "INT3452")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) Controller - Southwest")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y0A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                {
                    0x0000000E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GPO3._Y0A._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GPO3._Y0A._LEN, B0LN)  // _LEN: Length
                B0BA = GP3A /* \GP3A */
                B0LN = GP3L /* \GP3L */
                Return (RBUF) /* \_SB_.GPO3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
            }

            OperationRegion (GPOP, SystemMemory, GP3A, GP3L)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Offset (0x5F0), 
                SDPC,   1
            }
        }

        Scope (\_SB)
        {
            Device (IPC1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT34D2")  // _HID: Hardware ID
                Name (_CID, "INT34D2")  // _CID: Compatible ID
                Name (_DDN, "Intel(R) IPCI controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00002000,         // Address Length
                        _Y0B)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000004,         // Address Length
                        _Y0C)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000004,         // Address Length
                        _Y0D)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00002000,         // Address Length
                        _Y0E)
                    IO (Decode16,
                        0x0400,             // Range Minimum
                        0x0480,             // Range Maximum
                        0x04,               // Alignment
                        0x80,               // Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                    {
                        0x00000028,
                    }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (RBUF, \_SB.IPC1._Y0B._BAS, B0BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.IPC1._Y0B._LEN, B0LN)  // _LEN: Length
                    B0BA = DD1A /* \DD1A */
                    B0LN = DD1L /* \DD1L */
                    CreateDWordField (RBUF, \_SB.IPC1._Y0C._BAS, BM01)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.IPC1._Y0C._LEN, BML1)  // _LEN: Length
                    CreateDWordField (RBUF, \_SB.IPC1._Y0D._BAS, BM02)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.IPC1._Y0D._LEN, BML2)  // _LEN: Length
                    BM01 = BMDA /* \BMDA */
                    BML1 = 0x04
                    BM02 = BMIA /* \BMIA */
                    BML2 = 0x04
                    CreateDWordField (RBUF, \_SB.IPC1._Y0E._BAS, B1BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.IPC1._Y0E._LEN, B1LN)  // _LEN: Length
                    B1BA = DD3A /* \DD3A */
                    B1LN = DD3L /* \DD3L */
                    Return (RBUF) /* \_SB_.IPC1.RBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            PRWP [Zero] = Arg0
            Local0 = (SS1 << One)
            Local0 |= (SS2 << 0x02)
            Local0 |= (SS3 << 0x03)
            Local0 |= (SS4 << 0x04)
            If (((One << Arg1) & Local0))
            {
                PRWP [One] = Arg1
            }
            Else
            {
                Local0 >>= One
                FindSetLeftBit (Local0, PRWP [One])
            }

            Return (PRWP) /* \PRWP */
        }
    }

    Scope (_SB)
    {
        Name (OSCI, Zero)
        Name (OSCO, Zero)
        Name (OSCP, Zero)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 == One))
                {
                    OSCP = CAP0 /* \_SB_._OSC.CAP0 */
                    If ((CAP0 & 0x04))
                    {
                        OSCO = 0x04
                    }
                }
                Else
                {
                    STS0 &= 0xFFFFFF00
                    STS0 |= 0x0A
                }
            }
            Else
            {
                STS0 &= 0xFFFFFF00
                STS0 |= 0x06
            }

            Return (Arg3)
        }
    }

    Name (CTYP, Zero)
    Name (ACTT, 0x3F)
    Name (CRTT, 0x7D)
    Name (PSVT, 0x6F)
    Name (TC1V, One)
    Name (TSPV, 0x0A)
    Name (TC2V, 0x05)
    Scope (_TZ)
    {
        OperationRegion (MBAR, SystemMemory, ((\_SB.PCI0.VLVC.MHBR << 0x0F) + 0x7000), 0x0100)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x1C), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            Offset (0x1E), 
            PKGT,   8
        }

        Name (LEGA, One)
        Name (LEGP, One)
        Name (LEGC, One)
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (FANS, Zero)
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LEGA)
                {
                    FANS = One
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LEGA)
                {
                    FANS = Zero
                }
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        ThermalZone (TZ01)
        {
            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                If ((LEGA == Zero))
                {
                    Return (0x12E0)
                }

                Return ((0x0AAC + (ACTT * 0x0A)))
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN0
            })
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If ((LEGC == Zero))
                {
                    Return (0x12E0)
                }

                Return ((0x0AAC + (CRTT * 0x0A)))
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                CTYP = Arg0
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local0 = PKGT /* \_TZ_.PKGT */
                If ((Local0 & 0x80))
                {
                    Local0 = ((~Local0 & 0xFF) + One)
                    Return ((0x0AAC - (Local0 * 0x0A)))
                }
                Else
                {
                    Return ((0x0AAC + (Local0 * 0x0A)))
                }
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If ((MPEN == 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (MPEN)
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If ((LEGP == Zero))
                {
                    Return (0x0EF8)
                }

                Return ((0x0AAC + (PSVT * 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1V) /* \TC1V */
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2V) /* \TC2V */
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (TSPV) /* \TSPV */
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xE0000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEA00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED01000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED03000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED06000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED08000,         // Address Base
                    0x00002000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED80000,         // Address Base
                    0x00040000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED1C000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.XHC, 0x02) // Device Wake
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.HDAS, 0x02) // Device Wake
        }

        Method (_L0F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
        }

        Method (_L39, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.SATA.PRT0, 0x02) // Device Wake
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            ADBG ("L03")
            RP3S = One
            If ((RP3D == Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            ADBG ("L07")
            RP1S = One
            If ((RP1D == Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            }
        }

        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            RP2S = One
            If ((RP2D == Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            }
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            ADBG ("L09")
            Local2 = G0S /* \G0S_ */
            Local2 |= 0x01C8
            G0S = Local2
            If ((RP1D == Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            }

            If ((RP2D == Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            }

            If ((RP3D == Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            }

            If ((RP4D == Zero))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
            }

            If ((RP5D == Zero))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
            }

            If ((RP6D == Zero))
            {
                \_SB.PCI0.RP06.HPME ()
                Notify (\_SB.PCI0.RP06, 0x02) // Device Wake
            }
        }
    }

    Scope (_SB.PCI0.I2C0)
    {
        Device (CAM1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "ADV7481A")  // _HID: Hardware ID
            Name (_CID, "ADV7481A")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001E
                        }
                    I2cSerialBusV2 (0x0070, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (SBUF) /* \_SB_.PCI0.I2C0.CAM1._CRS.SBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                {
                    Return ("ADV7481A")
                }

                If ((Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                {
                    Return (0x40)
                }

                If ((Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                {
                    Return (0xFF)
                }

                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == One))
                    {
                        Return (0x02)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (0x02001000)
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (0x02000E01)
                    }
                }

                Return (Zero)
            }
        }

        Device (CAM2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "ADV7481B")  // _HID: Hardware ID
            Name (_CID, "ADV7481B")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001E
                        }
                    I2cSerialBusV2 (0x0071, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (SBUF) /* \_SB_.PCI0.I2C0.CAM2._CRS.SBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                {
                    Return ("ADV7481B")
                }

                If ((Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                {
                    Return (0x14)
                }

                If ((Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                {
                    Return (0xFF)
                }

                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == One))
                    {
                        Return (0x02)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (0x02001000)
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (0x02000E01)
                    }
                }

                Return (Zero)
            }
        }
    }

    Scope (_PR.CPU0)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            If ((MWEN == Zero))
            {
                Return (Package (0x04)
                {
                    0x03, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        One, 
                        One, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000415, // Address
                                ,)
                        }, 

                        0x02, 
                        0x32, 
                        0x0A
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000419, // Address
                                ,)
                        }, 

                        0x03, 
                        0x96, 
                        0x0A
                    }
                })
            }

            Return (Package (0x04)
            {
                0x03, 
                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000001, // Address
                            0x01,               // Access Size
                            )
                    }, 

                    One, 
                    One, 
                    0x03E8
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000021, // Address
                            0x01,               // Access Size
                            )
                    }, 

                    0x02, 
                    0x32, 
                    0x0A
                }, 

                Package (0x04)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x01,               // Bit Width
                            0x02,               // Bit Offset
                            0x0000000000000060, // Address
                            0x01,               // Access Size
                            )
                    }, 

                    0x03, 
                    0x96, 
                    0x0A
                }
            })
        }
    }

    Scope (_PR.CPU1)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (^^CPU0._CST ())
        }
    }

    Scope (_PR.CPU2)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (^^CPU0._CST ())
        }
    }

    Scope (_PR.CPU3)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (^^CPU0._CST ())
        }
    }

    Scope (\)
    {
        Name (PDC0, 0x80000000)
        Name (PDC1, 0x80000000)
        Name (PDC2, 0x80000000)
        Name (PDC3, 0x80000000)
        Name (SDTL, Zero)
    }

    Scope (_PR)
    {
        OperationRegion (PNVS, SystemMemory, 0x7AEDFF50, 0x0006)
        Field (PNVS, AnyAcc, Lock, Preserve)
        {
            CFGD,   32, 
            NLPC,   8, 
            MWEN,   8
        }
    }

    Scope (_PR.CPU0)
    {
        Name (HI0, Zero)
        Name (HC0, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (CPDC, 1, Serialized)
        {
            CreateDWordField (Arg0, Zero, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            Return (COSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2))
        }

        Method (COSC, 4, Serialized)
        {
            If ((Arg2 > Zero))
            {
                CreateDWordField (Arg3, Zero, STS0)
            }

            CreateDWordField (Arg0, Zero, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))
            CreateDWordField (UID0, Zero, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 = 0x06
                Return (Arg3)
            }

            If ((Arg1 != One))
            {
                STS0 = 0x0A
                Return (Arg3)
            }

            Return (Arg3)
        }

        Method (GCAP, 1, Serialized)
        {
            CreateDWordField (Arg0, Zero, STS0)
            CreateDWordField (Arg0, 0x04, CAP0)
            If (((STS0 == 0x06) || (STS0 == 0x0A)))
            {
                Return (Zero)
            }

            If ((STS0 & One))
            {
                CAP0 &= 0x0BFF
                Return (Zero)
            }

            PDC0 = ((PDC0 & 0x7FFFFFFF) | CAP0) /* \_PR_.CPU0.GCAP.CAP0 */
            If ((CFGD & 0x02))
            {
                If ((((CFGD & 0x02) && (PDC0 & 0x18)) && !
                    (SDTL & 0x02)))
                {
                    SDTL |= 0x02
                }
            }

            If ((!(CFGD & 0x00400000) && ((CFGD & One) && 
                !(SDTL & 0x08))))
            {
                SDTL |= 0x08
            }

            Return (Zero)
        }
    }

    Scope (_PR.CPU1)
    {
        Name (HI1, Zero)
        Name (HC1, Zero)
        Name (HW1, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = ^^CPU0.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = ^^CPU0.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, STS1)
            CreateDWordField (Arg0, 0x04, CAP1)
            If (((STS1 == 0x06) || (STS1 == 0x0A)))
            {
                Return (Zero)
            }

            If ((STS1 & One))
            {
                CAP1 &= 0x0BFF
                Return (Zero)
            }

            PDC1 = ((PDC1 & 0x7FFFFFFF) | CAP1) /* \_PR_.CPU1.GCAP.CAP1 */
            If (((PDC1 & 0x09) == 0x09))
            {
                APPT ()
            }

            If ((PDC1 & 0x18))
            {
                APCT ()
            }

            PDC0 = PDC1 /* \PDC1 */
            Return (Zero)
        }

        Method (APCT, 0, Serialized)
        {
            If (((CFGD & 0x02) && !(SDTL & 0x20)))
            {
                SDTL |= 0x20
            }
        }

        Method (APPT, 0, Serialized)
        {
            If (((CFGD & One) && !(SDTL & 0x10)))
            {
                SDTL |= 0x10
            }
        }
    }

    Scope (_PR.CPU2)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = ^^CPU0.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = ^^CPU0.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, STS2)
            CreateDWordField (Arg0, 0x04, CAP2)
            If (((STS2 == 0x06) || (STS2 == 0x0A)))
            {
                Return (Zero)
            }

            If ((STS2 & One))
            {
                CAP2 &= 0x0BFF
                Return (Zero)
            }

            PDC2 = ((PDC2 & 0x7FFFFFFF) | CAP2) /* \_PR_.CPU2.GCAP.CAP2 */
            If (((PDC2 & 0x09) == 0x09))
            {
                ^^CPU1.APPT ()
            }

            If ((PDC2 & 0x18))
            {
                ^^CPU1.APCT ()
            }

            PDC0 = PDC2 /* \PDC2 */
            Return (Zero)
        }
    }

    Scope (_PR.CPU3)
    {
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Local0 = ^^CPU0.CPDC (Arg0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Local0 = ^^CPU0.COSC (Arg0, Arg1, Arg2, Arg3)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, STS3)
            CreateDWordField (Arg0, 0x04, CAP3)
            If (((STS3 == 0x06) || (STS3 == 0x0A)))
            {
                Return (Zero)
            }

            If ((STS3 & One))
            {
                CAP3 &= 0x0BFF
                Return (Zero)
            }

            PDC3 = ((PDC3 & 0x7FFFFFFF) | CAP3) /* \_PR_.CPU3.GCAP.CAP3 */
            If (((PDC3 & 0x09) == 0x09))
            {
                ^^CPU1.APPT ()
            }

            If ((PDC3 & 0x18))
            {
                ^^CPU1.APCT ()
            }

            PDC0 = PDC3 /* \PDC3 */
            Return (Zero)
        }
    }

    Scope (_SB.PCI0.I2C4)
    {
        Device (HDAC)
        {
            Name (_HID, "INT34C3")  // _HID: Hardware ID
            Name (_CID, "INT34C3")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Smart Sound Technology Audio Codec")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBFB, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x006C, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Name (SBFI, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (ConcatenateResTemplate (SBFB, SBFI))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB)
    {
        Device (TPM)
        {
            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadOnly,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
            })
            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                ACC0,   8
            }

            OperationRegion (TNVS, SystemMemory, 0x7AEDFF60, 0x26)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }

            Method (PTS, 1, Serialized)
            {
                If (((Arg0 < 0x06) && (Arg0 > 0x03)))
                {
                    If (!(MORD & 0x10))
                    {
                        MCIP = 0x02
                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((ACC0 == 0xFF))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (HINF, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If ((_STA () == Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        Return ("1.2")
                    }
                    Case (0x02)
                    {
                        PPRQ = DerefOf (Arg2 [Zero])
                        PPIP = 0x02
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x03)
                    {
                        TPM2 [One] = PPRQ /* \_SB_.TPM_.PPRQ */
                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }
                    Case (0x04)
                    {
                        Return (0x02)
                    }
                    Case (0x05)
                    {
                        PPIP = 0x05
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        TPM3 [One] = LPPR /* \_SB_.TPM_.LPPR */
                        TPM3 [0x02] = PPRP /* \_SB_.TPM_.PPRP */
                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        PPIP = 0x07
                        PPRQ = DerefOf (Arg2 [Zero])
                        PPRM = Zero
                        If ((PPRQ == 0x17))
                        {
                            PPRM = DerefOf (Arg2 [One])
                        }

                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x08)
                    {
                        PPIP = 0x08
                        PPRQ = DerefOf (Arg2 [Zero])
                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        MORD = DerefOf (Arg2 [Zero])
                        MCIP = One
                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */
                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (_PR.CPU0)
    {
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            _PPC = Zero
            If (((CFGD & One) && (PDC0 & One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x00,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000000000, // Address
                        ,)
                }
            })
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (SPSS) /* \_PR_.CPU0.SPSS */
        }

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFE, 
                    NLPC
                }
            })
        }

        Name (SPSS, Package (0x11)
        {
            Package (0x06)
            {
                0x00000960, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001800, 
                0x00001800
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000898, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001600, 
                0x00001600
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001500, 
                0x00001500
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x00000708, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001200, 
                0x00001200
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001100, 
                0x00001100
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000E00, 
                0x00000E00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }, 

            Package (0x06)
            {
                0x0000044C, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000B00, 
                0x00000B00
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000A00, 
                0x00000A00
            }, 

            Package (0x06)
            {
                0x00000384, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000900, 
                0x00000900
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x00000000, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }
        })
    }

    Scope (_PR.CPU1)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (^^CPU0._PPC) /* \_PR_.CPU0._PPC */
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (^^CPU0._PCT ())
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (^^CPU0._PSS ())
        }

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (^^CPU0._PSD ())
        }
    }

    Scope (_PR.CPU2)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (^^CPU0._PPC) /* \_PR_.CPU0._PPC */
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (^^CPU0._PCT ())
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (^^CPU0._PSS ())
        }

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (^^CPU0._PSD ())
        }
    }

    Scope (_PR.CPU3)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (^^CPU0._PPC) /* \_PR_.CPU0._PPC */
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (^^CPU0._PCT ())
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (^^CPU0._PSS ())
        }

        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            Return (^^CPU0._PSD ())
        }
    }

    OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
    Field (IGDP, AnyAcc, NoLock, Preserve)
    {
        Offset (0x10), 
        MADR,   32, 
        Offset (0x50), 
            ,   1, 
        GIVD,   1, 
            ,   1, 
            ,   3, 
        GUMA,   2, 
        Offset (0x52), 
        Offset (0x54), 
            ,   4, 
        GMFN,   1, 
        Offset (0x58), 
        Offset (0x5C), 
        GSTM,   32, 
        Offset (0xB0), 
            ,   12, 
        CDVL,   1, 
        Offset (0xB2), 
        Offset (0xE4), 
        ASLE,   8, 
        Offset (0xE8), 
        GSSE,   1, 
        GSSB,   14, 
        GSES,   1, 
        Offset (0xFC), 
        ASLS,   32
    }

    OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
    Field (IGDM, AnyAcc, NoLock, Preserve)
    {
        SIGN,   128, 
        SIZE,   32, 
        OVER,   32, 
        SVER,   256, 
        VVER,   128, 
        GVER,   128, 
        MBOX,   32, 
        DMOD,   32, 
        PCON,   32, 
        DVER,   256, 
        Offset (0x100), 
        DRDY,   32, 
        CSTS,   32, 
        CEVT,   32, 
        Offset (0x120), 
        DIDL,   32, 
        DDL2,   32, 
        DDL3,   32, 
        DDL4,   32, 
        DDL5,   32, 
        DDL6,   32, 
        DDL7,   32, 
        DDL8,   32, 
        CPDL,   32, 
        CPL2,   32, 
        CPL3,   32, 
        CPL4,   32, 
        CPL5,   32, 
        CPL6,   32, 
        CPL7,   32, 
        CPL8,   32, 
        CAD1,   32, 
        CAL2,   32, 
        CAL3,   32, 
        CAL4,   32, 
        CAL5,   32, 
        CAL6,   32, 
        CAL7,   32, 
        CAL8,   32, 
        NADL,   32, 
        NDL2,   32, 
        NDL3,   32, 
        NDL4,   32, 
        NDL5,   32, 
        NDL6,   32, 
        NDL7,   32, 
        NDL8,   32, 
        ASLP,   32, 
        TIDX,   32, 
        CHPD,   32, 
        CLID,   32, 
        CDCK,   32, 
        SXSW,   32, 
        EVTS,   32, 
        CNOT,   32, 
        NRDY,   32, 
        DDL9,   32, 
        DD10,   32, 
        DD11,   32, 
        DD12,   32, 
        DD13,   32, 
        DD14,   32, 
        DD15,   32, 
        CPL9,   32, 
        CP10,   32, 
        CP11,   32, 
        CP12,   32, 
        CP13,   32, 
        CP14,   32, 
        CP15,   32, 
        Offset (0x200), 
        SCIE,   1, 
        GEFC,   4, 
        GXFC,   3, 
        GESF,   8, 
        Offset (0x204), 
        PARM,   32, 
        DSLP,   32, 
        Offset (0x300), 
        ARDY,   32, 
        ASLC,   32, 
        TCHE,   32, 
        ALSI,   32, 
        BCLP,   32, 
        PFIT,   32, 
        CBLV,   32, 
        BCLM,   320, 
        CPFM,   32, 
        EPFM,   32, 
        PLUT,   592, 
        PFMB,   32, 
        CCDV,   32, 
        PCFT,   32, 
        SROT,   32, 
        IUER,   32, 
        FDSP,   64, 
        FDSS,   32, 
        STAT,   32, 
        RVDA,   64, 
        RVDS,   32, 
        Offset (0x400), 
        GVD1,   49152, 
        PHED,   32, 
        BDDC,   2048
    }

    Name (DBTB, Package (0x15)
    {
        Zero, 
        0x07, 
        0x38, 
        0x01C0, 
        0x0E00, 
        0x3F, 
        0x01C7, 
        0x0E07, 
        0x01F8, 
        0x0E38, 
        0x0FC0, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        Zero, 
        0x7000, 
        0x7007, 
        0x7038, 
        0x71C0, 
        0x7E00
    })
    Name (CDCT, Package (0x06)
    {
        Package (0x01)
        {
            0xA0
        }, 

        Package (0x01)
        {
            0xC8
        }, 

        Package (0x01)
        {
            0x010B
        }, 

        Package (0x01)
        {
            0x0140
        }, 

        Package (0x01)
        {
            0x0164
        }, 

        Package (0x01)
        {
            0x0190
        }
    })
    Name (SUCC, One)
    Name (NVLD, 0x02)
    Name (CRIT, 0x04)
    Name (NCRT, 0x06)
    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

