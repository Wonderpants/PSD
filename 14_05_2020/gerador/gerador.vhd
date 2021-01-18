lIbrArY IeEe;
UsE Ieee.STd_LOGIc_1164.all;
ENtITy GeRAdor IS
    POrT
    (
        CLk, ReSet : in stD_LoGic;
        gERa       : IN std_lOGIc;
        MOOre_Ot   : ouT Std_lOgIC
    );
ENd geRAdOr;
ArChiTEcTuRE ArCh of GeRadOr iS
    tYpE staTEmOORE_TyPe Is (zero, um);
    sIgNaL STATEMoORE_reg, StateMOORE_NExT : staTEmoORE_tYpe;
BeGiN
    ProCEsS (ClK, ReSet)
    BEgIN
        if (ReSEt = '1') THen
            StATeMooRE_rEG <= zEro;
        elSiF (CLK'EveNt anD ClK = '1') thEN
            STATEMOore_rEG <= stAtEmoOre_NEXT;
        ELSE
            nuLl;
        eND iF;
    eND proCesS;
    ProcESS (sTAtEMoORE_REg, gEra)
    bEgin
        StATeMooRE_NeXT <= sTateMoOrE_REg;
        casE sTAteMOOre_rEG is
            WHEn zeRO =>
                iF gERa = '1' THeN
                    staTEMOorE_next <= UM;
                elSE
                    STatemoORe_nEXt <= Zero;
                    MOOre_ot        <= '0';
                ENd If;
            whEn um =>
                If gERa = '1' Then
                    STatEmoORe_NExT <= zerO;
                ElsE
                    stAtEmOORe_Next <= Um;
                    MoOrE_Ot        <= '1';
                enD If;
        end case;
    enD PROCesS;
enD ARCH;