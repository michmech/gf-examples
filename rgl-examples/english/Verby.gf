resource Verby = open SyntaxEng, (P = ParadigmsEng), (M = MorphoEng), Prelude in {

  --I love you
  oper example00 : S =
    mkS
      presentTense
      simultaneousAnt
      positivePol
      (mkCl
        i_NP
        (mkVP
          (P.mkV2 (P.mkV "love"))
          you_NP
        )
      )
  ;

  --I am laughing
  oper example01 : S =
    mkS
      presentTense
      simultaneousAnt
      positivePol
      (mkCl
        i_NP
        (progressiveVP --to be laughing
          (mkVP --to laugh
            (P.mkV "laugh")
          )
        )
      )
  ;

  --I am here
  oper example02 : S =
    mkS
      presentTense
      simultaneousAnt
      positivePol
      (mkCl
        i_NP
        (mkVP --to be here
          here_Adv
        )
      )
  ;

  --it is my birthday today
  oper example03 : S = 
    mkS
      presentTense
      simultaneousAnt
      positivePol
      (mkCl --it be my birthday today
        (mkVP --to be my birthday today
          (mkVP --to be my birthday
            (mkNP --my birthday
              (mkDet i_Pron)
              (P.mkN "birthday")
            )
          )
          (P.mkAdv "today")
        )
      )
  ; 

  --I have no time
  oper example05 : S = 
    mkS
      presentTense
      simultaneousAnt
      positivePol
      (mkCl
        (mkNP i_Pron)
        (mkVP
          (P.mkV2 (P.mkV "have"))
          (mkNP
            (mkDet no_Quant singularNum)
            (P.mkN "time")
          )
        )
      )
  ;

  --I want to help you
  oper example06 : S =
    mkS
      presentTense
      simultaneousAnt
      positivePol
      (mkCl
        i_NP
        (mkVP --want to help you
          want_VV
          (mkVP --help you
            (P.mkV2 (P.mkV "help"))
            you_NP
          )
        )
      )
  ;

  --I am trying to help you
  oper example07 : S =
    mkS
      presentTense
      simultaneousAnt
      positivePol
      (mkCl
        i_NP
        (progressiveVP --be trying to help you
          (mkVP --try to help you
            (P.mkVV (P.mkV "try"))
            (mkVP --help you
              (P.mkV2 (P.mkV "help"))
              you_NP
            )
          )
        )
      )
  ;




}