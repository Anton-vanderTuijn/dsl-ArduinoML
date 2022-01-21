<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a7de18b7-61d4-4f5f-bfef-121673a859b4(ArduinoML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML">
      <concept id="8979439463483866759" name="ArduinoML.structure.IActionLCD" flags="ng" index="2jyhSq">
        <property id="8979439463483866763" name="rowToDisplay" index="2jyhSm" />
        <reference id="8979439463483866766" name="target" index="2jyhSj" />
      </concept>
      <concept id="6960558460116088515" name="ArduinoML.structure.App" flags="ng" index="l5YB9">
        <child id="6960558460116088537" name="states" index="l5YBj" />
        <child id="2141626661100871349" name="bricks" index="3_PcyG" />
      </concept>
      <concept id="6960558460116088517" name="ArduinoML.structure.ActuatorDigital" flags="ng" index="l5YBf" />
      <concept id="6960558460116088530" name="ArduinoML.structure.State" flags="ng" index="l5YBo">
        <child id="6960558460116088532" name="actions" index="l5YBu" />
        <child id="5766921242181707679" name="transitions" index="3BVhZf" />
      </concept>
      <concept id="6960558460117854866" name="ArduinoML.structure.SensorAnalog" flags="ng" index="lcJmo" />
      <concept id="936800808369330549" name="ArduinoML.structure.IBrick" flags="ng" index="X9NoE">
        <property id="936800808369643093" name="pin" index="XaZ4a" />
      </concept>
      <concept id="936800808369330535" name="ArduinoML.structure.ActionLCDDigitalReaderText" flags="ng" index="X9NoS">
        <reference id="936800808369330546" name="brick" index="X9NoH" />
      </concept>
      <concept id="936800808369330532" name="ArduinoML.structure.ActionLCDAnalogReaderText" flags="ng" index="X9NoV">
        <reference id="8979439463482588090" name="brick" index="2jBpGB" />
      </concept>
      <concept id="7811193151328060464" name="ArduinoML.structure.StateError" flags="ng" index="1cImFT">
        <property id="7811193151328060467" name="errorValue" index="1cImFU" />
      </concept>
      <concept id="7811193151327754314" name="ArduinoML.structure.IState" flags="ng" index="1cJ3q3">
        <property id="7811193151327754319" name="isInitial" index="1cJ3q6" />
      </concept>
      <concept id="6091910209283437144" name="ArduinoML.structure.ActuatorLCD" flags="ng" index="1foe9n">
        <property id="5766921242179458249" name="rows" index="3BMIMp" />
        <property id="5766921242179458252" name="columns" index="3BMIMs" />
      </concept>
      <concept id="5766921242180068163" name="ArduinoML.structure.ActionDigital" flags="ng" index="3BL1Gj">
        <property id="5766921242180082541" name="signal" index="3BL6cX" />
        <reference id="5766921242180082543" name="target" index="3BL6cZ" />
      </concept>
      <concept id="5766921242181710566" name="ArduinoML.structure.ITransition" flags="ng" index="3BVgEQ">
        <reference id="3159270251226430145" name="state" index="U685f" />
      </concept>
      <concept id="5766921242181710567" name="ArduinoML.structure.Transition" flags="ng" index="3BVgER">
        <child id="5766921242181942006" name="conditions" index="3BS8aA" />
      </concept>
      <concept id="5766921242181886178" name="ArduinoML.structure.ConditionAnalog" flags="ng" index="3BVXyM">
        <property id="5766921242181891028" name="comparator" index="3BVWI4" />
        <property id="5766921242181891078" name="value" index="3BVWLm" />
        <reference id="5766921242181886181" name="sensor" index="3BVXyP" />
      </concept>
      <concept id="5766921242183501200" name="ArduinoML.structure.SensorButtonDigital" flags="ng" index="3C2bR0" />
      <concept id="5766921242183634637" name="ArduinoML.structure.ConditionDigitalButton" flags="ng" index="3C2Fqt">
        <property id="5766921242184163620" name="signal" index="3C0D_O" />
        <reference id="5766921242184163622" name="sensor" index="3C0D_Q" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="l5YB9" id="62oRKDP$6Yq">
    <property role="TrG5h" value="LCD Screen Demo State" />
    <node concept="lcJmo" id="7Mto9RIYh0c" role="3_PcyG">
      <property role="TrG5h" value="light" />
      <property role="XaZ4a" value="1" />
    </node>
    <node concept="l5YBf" id="7Mto9RIYgZY" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="3C2bR0" id="1QS_xBSuAUm" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="1foe9n" id="1QS_xBSuAUu" role="3_PcyG">
      <property role="TrG5h" value="lcd" />
      <property role="XaZ4a" value="2" />
      <property role="3BMIMs" value="16" />
      <property role="3BMIMp" value="2" />
    </node>
    <node concept="l5YBo" id="6LAVG$wRScR" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="1cJ3q6" value="true" />
      <node concept="3BVgER" id="2JnYSShOMq3" role="3BVhZf">
        <ref role="U685f" node="7Mto9RIYbuo" resolve="on" />
        <node concept="3C2Fqt" id="2JnYSShOMqa" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUm" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="6LAVG$wRSd8" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="7Mto9RIYgZY" resolve="led" />
      </node>
      <node concept="X9NoS" id="6LAVG$wRSdd" role="l5YBu">
        <property role="2jyhSm" value="0" />
        <ref role="X9NoH" node="7Mto9RIYgZY" resolve="led" />
        <ref role="2jyhSj" node="1QS_xBSuAUu" resolve="lcd" />
      </node>
      <node concept="X9NoV" id="6LAVG$wRSdk" role="l5YBu">
        <property role="2jyhSm" value="1" />
        <ref role="2jyhSj" node="1QS_xBSuAUu" resolve="lcd" />
        <ref role="2jBpGB" node="7Mto9RIYh0c" resolve="light" />
      </node>
    </node>
    <node concept="l5YBo" id="7Mto9RIYbuo" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BVgER" id="2JnYSShOMqj" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wRScR" resolve="off" />
        <node concept="3C2Fqt" id="2JnYSShOMqq" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAUm" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="7Mto9RIYhoW" role="l5YBu">
        <ref role="3BL6cZ" node="7Mto9RIYgZY" resolve="led" />
      </node>
      <node concept="X9NoS" id="7Mto9RJ65m1" role="l5YBu">
        <property role="2jyhSm" value="0" />
        <ref role="X9NoH" node="7Mto9RIYgZY" resolve="led" />
        <ref role="2jyhSj" node="1QS_xBSuAUu" resolve="lcd" />
      </node>
      <node concept="X9NoV" id="7Mto9RJ65m2" role="l5YBu">
        <property role="2jyhSm" value="1" />
        <ref role="2jyhSj" node="1QS_xBSuAUu" resolve="lcd" />
        <ref role="2jBpGB" node="7Mto9RIYh0c" resolve="light" />
      </node>
    </node>
  </node>
  <node concept="l5YB9" id="508e52RTJyd">
    <property role="TrG5h" value="Very simple alarm" />
    <node concept="l5YBf" id="1QS_xBSrq1d" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="11" />
    </node>
    <node concept="l5YBf" id="1QS_xBSrq1j" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="12" />
    </node>
    <node concept="3C2bR0" id="1QS_xBSrq1r" role="3_PcyG">
      <property role="TrG5h" value="btn" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="l5YBo" id="6LAVG$wRSg9" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="1cJ3q6" value="true" />
      <node concept="3BVgER" id="2JnYSShOMtb" role="3BVhZf">
        <ref role="U685f" node="508e52RWjrn" resolve="on" />
        <node concept="3C2Fqt" id="2JnYSShOMti" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSrq1r" resolve="btn" />
        </node>
      </node>
      <node concept="3BL1Gj" id="6LAVG$wRSgu" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSrq1d" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="6LAVG$wRSgz" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSrq1j" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="508e52RWjrn" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BVgER" id="2JnYSShOMtr" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wRSg9" resolve="off" />
        <node concept="3C2Fqt" id="2JnYSShOMty" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSrq1r" resolve="btn" />
        </node>
      </node>
      <node concept="3BL1Gj" id="508e52RWjrx" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSrq1d" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK3B6g" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSrq1j" resolve="buzzer" />
      </node>
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK43Qu">
    <property role="TrG5h" value="Dual-check alarm" />
    <node concept="l5YBf" id="1QS_xBSuATU" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="12" />
    </node>
    <node concept="3C2bR0" id="1QS_xBSuAU0" role="3_PcyG">
      <property role="TrG5h" value="btn1" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="3C2bR0" id="1QS_xBSuAU8" role="3_PcyG">
      <property role="TrG5h" value="btn2" />
      <property role="XaZ4a" value="10" />
    </node>
    <node concept="l5YBo" id="6LAVG$wRSaY" role="l5YBj">
      <property role="TrG5h" value="alarm_off" />
      <property role="1cJ3q6" value="true" />
      <node concept="3BL1Gj" id="6LAVG$wRSbe" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuATU" resolve="buzzer" />
      </node>
      <node concept="3BVgER" id="2JnYSShOMmk" role="3BVhZf">
        <ref role="U685f" node="O0bPWK43R5" resolve="alarm_on" />
        <node concept="3C2Fqt" id="2JnYSShOMmy" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAU0" resolve="btn1" />
        </node>
        <node concept="3C2Fqt" id="2JnYSShOMms" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAU8" resolve="btn2" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK43R5" role="l5YBj">
      <property role="TrG5h" value="alarm_on" />
      <node concept="3BVgER" id="2JnYSShOMmK" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wRSaY" resolve="alarm_off" />
        <node concept="3C2Fqt" id="2JnYSShOMmT" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAU0" resolve="btn1" />
        </node>
      </node>
      <node concept="3BVgER" id="2JnYSShOMn5" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wRSaY" resolve="alarm_off" />
        <node concept="3C2Fqt" id="2JnYSShOMn6" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAU8" resolve="btn2" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK43Rf" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSuATU" resolve="buzzer" />
      </node>
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK9$cu">
    <property role="TrG5h" value="State-based alarm" />
    <node concept="l5YBf" id="1QS_xBSuAUV" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="11" />
    </node>
    <node concept="3C2bR0" id="1QS_xBSuAV1" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="l5YBo" id="6LAVG$wRSfj" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="1cJ3q6" value="true" />
      <node concept="3BVgER" id="2JnYSShOMs3" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$cV" resolve="on_intermediary" />
        <node concept="3C2Fqt" id="2JnYSShOMsa" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAV1" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="6LAVG$wRSfA" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuAUV" resolve="led" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$cV" role="l5YBj">
      <property role="TrG5h" value="on_intermediary" />
      <node concept="3BVgER" id="2JnYSShOMsj" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$cM" resolve="on" />
        <node concept="3C2Fqt" id="2JnYSShOMsq" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAV1" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$cM" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BVgER" id="2JnYSShOMsz" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$dp" resolve="off_intermediary" />
        <node concept="3C2Fqt" id="2JnYSShOMsM" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAV1" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$cS" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSuAUV" resolve="led" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$dp" role="l5YBj">
      <property role="TrG5h" value="off_intermediary" />
      <node concept="3BVgER" id="2JnYSShOMsV" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wRSfj" resolve="off" />
        <node concept="3C2Fqt" id="2JnYSShOMt2" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAV1" resolve="button" />
        </node>
      </node>
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK9$dS">
    <property role="TrG5h" value="Multi-state Alarm" />
    <node concept="l5YBf" id="1QS_xBSuAU_" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="11" />
    </node>
    <node concept="l5YBf" id="1QS_xBSuAUF" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="12" />
    </node>
    <node concept="3C2bR0" id="1QS_xBSuAUN" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="l5YBo" id="6LAVG$wRSe3" role="l5YBj">
      <property role="TrG5h" value="alarm_off" />
      <property role="1cJ3q6" value="true" />
      <node concept="3BVgER" id="2JnYSShOMqz" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$eP" resolve="alarm_s1_intermediary" />
        <node concept="3C2Fqt" id="2JnYSShOMqE" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="6LAVG$wRSe_" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuAU_" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$ek" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuAUF" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eP" role="l5YBj">
      <property role="TrG5h" value="alarm_s1_intermediary" />
      <node concept="3BVgER" id="2JnYSShOMqN" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$eo" resolve="alarm_s1" />
        <node concept="3C2Fqt" id="2JnYSShOMqU" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eo" role="l5YBj">
      <property role="TrG5h" value="alarm_s1" />
      <node concept="3BVgER" id="2JnYSShOMr3" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$eZ" resolve="alarm_s2_intermediary" />
        <node concept="3C2Fqt" id="2JnYSShOMra" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$ev" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSuAUF" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eZ" role="l5YBj">
      <property role="TrG5h" value="alarm_s2_intermediary" />
      <node concept="3BVgER" id="2JnYSShOMrj" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$ey" resolve="alarm_s2" />
        <node concept="3C2Fqt" id="2JnYSShOMrq" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$ey" role="l5YBj">
      <property role="TrG5h" value="alarm_s2" />
      <node concept="3BVgER" id="2JnYSShOMrz" role="3BVhZf">
        <ref role="U685f" node="O0bPWK9$fa" resolve="alarm_off_intermediary" />
        <node concept="3C2Fqt" id="2JnYSShOMrE" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$eF" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSuAU_" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$eL" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuAUF" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$fa" role="l5YBj">
      <property role="TrG5h" value="alarm_off_intermediary" />
      <node concept="3BVgER" id="2JnYSShOMrN" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wRSe3" resolve="alarm_off" />
        <node concept="3C2Fqt" id="2JnYSShOMrU" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
    </node>
  </node>
  <node concept="l5YB9" id="7Mto9RJ2Yvf">
    <property role="TrG5h" value="LCD Screen Demo Alarm" />
    <node concept="lcJmo" id="7Mto9RJ2Yvg" role="3_PcyG">
      <property role="TrG5h" value="light" />
      <property role="XaZ4a" value="1" />
    </node>
    <node concept="l5YBf" id="7Mto9RJ2Yvh" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="3C2bR0" id="7Mto9RJ2Yvi" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="1foe9n" id="7Mto9RJ2Yvj" role="3_PcyG">
      <property role="TrG5h" value="lcd" />
      <property role="XaZ4a" value="2" />
      <property role="3BMIMs" value="16" />
      <property role="3BMIMp" value="2" />
    </node>
    <node concept="l5YBo" id="6LAVG$wRSbV" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="1cJ3q6" value="true" />
      <node concept="3BVgER" id="2JnYSShOMpz" role="3BVhZf">
        <ref role="U685f" node="7Mto9RJ2Yvq" resolve="on" />
        <node concept="3BVXyM" id="2JnYSShOMpG" role="3BS8aA">
          <property role="3BVWI4" value="&lt;" />
          <property role="3BVWLm" value="30" />
          <ref role="3BVXyP" node="7Mto9RJ2Yvg" resolve="light" />
        </node>
      </node>
      <node concept="3BL1Gj" id="6LAVG$wRScc" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="7Mto9RJ2Yvh" resolve="led" />
      </node>
      <node concept="X9NoV" id="6LAVG$wRScq" role="l5YBu">
        <property role="2jyhSm" value="1" />
        <ref role="2jBpGB" node="7Mto9RJ2Yvg" resolve="light" />
        <ref role="2jyhSj" node="7Mto9RJ2Yvj" resolve="lcd" />
      </node>
      <node concept="X9NoS" id="6LAVG$wRSci" role="l5YBu">
        <property role="2jyhSm" value="0" />
        <ref role="X9NoH" node="7Mto9RJ2Yvh" resolve="led" />
        <ref role="2jyhSj" node="7Mto9RJ2Yvj" resolve="lcd" />
      </node>
    </node>
    <node concept="l5YBo" id="7Mto9RJ2Yvq" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BVgER" id="2JnYSShOMpN" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wRSbV" resolve="off" />
        <node concept="3BVXyM" id="2JnYSShOMpU" role="3BS8aA">
          <property role="3BVWI4" value="&gt;=" />
          <property role="3BVWLm" value="30" />
          <ref role="3BVXyP" node="7Mto9RJ2Yvg" resolve="light" />
        </node>
      </node>
      <node concept="3BL1Gj" id="7Mto9RJ2Yvr" role="l5YBu">
        <ref role="3BL6cZ" node="7Mto9RJ2Yvh" resolve="led" />
      </node>
      <node concept="X9NoS" id="7Mto9RJ65l9" role="l5YBu">
        <property role="2jyhSm" value="0" />
        <ref role="2jyhSj" node="7Mto9RJ2Yvj" resolve="lcd" />
        <ref role="X9NoH" node="7Mto9RJ2Yvh" resolve="led" />
      </node>
      <node concept="X9NoV" id="7Mto9RJ65l4" role="l5YBu">
        <property role="2jyhSm" value="1" />
        <ref role="2jBpGB" node="7Mto9RJ2Yvg" resolve="light" />
        <ref role="2jyhSj" node="7Mto9RJ2Yvj" resolve="lcd" />
      </node>
    </node>
  </node>
  <node concept="l5YB9" id="6LAVG$wSi2U">
    <property role="TrG5h" value="Exception Throwing" />
    <node concept="l5YBf" id="6LAVG$wSi2V" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="12" />
    </node>
    <node concept="3C2bR0" id="6LAVG$wSi2W" role="3_PcyG">
      <property role="TrG5h" value="btn1" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="3C2bR0" id="6LAVG$wSi2X" role="3_PcyG">
      <property role="TrG5h" value="btn2" />
      <property role="XaZ4a" value="10" />
    </node>
    <node concept="l5YBo" id="6LAVG$wSi2Y" role="l5YBj">
      <property role="TrG5h" value="alarm_off" />
      <property role="1cJ3q6" value="true" />
      <node concept="3BVgER" id="2JnYSShOMnC" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wSi33" resolve="alarm_on" />
        <node concept="3C2Fqt" id="2JnYSShOMnO" role="3BS8aA">
          <ref role="3C0D_Q" node="6LAVG$wSi2W" resolve="btn1" />
        </node>
      </node>
      <node concept="3BVgER" id="2JnYSShOMnR" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wSi33" resolve="alarm_on" />
        <node concept="3C2Fqt" id="2JnYSShOMnS" role="3BS8aA">
          <ref role="3C0D_Q" node="6LAVG$wSi2X" resolve="btn2" />
        </node>
      </node>
      <node concept="3BVgER" id="2JnYSShOMo8" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wSi3T" resolve="double_door_error" />
        <node concept="3C2Fqt" id="2JnYSShOMo9" role="3BS8aA">
          <ref role="3C0D_Q" node="6LAVG$wSi2W" resolve="btn1" />
        </node>
        <node concept="3C2Fqt" id="2JnYSShOMon" role="3BS8aA">
          <ref role="3C0D_Q" node="6LAVG$wSi2X" resolve="btn2" />
        </node>
      </node>
      <node concept="3BL1Gj" id="6LAVG$wSi2Z" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="6LAVG$wSi2V" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="6LAVG$wSi33" role="l5YBj">
      <property role="TrG5h" value="alarm_on" />
      <node concept="3BVgER" id="2JnYSShOMoY" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wSi2Y" resolve="alarm_off" />
        <node concept="3C2Fqt" id="2JnYSShOMp9" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="6LAVG$wSi2W" resolve="btn1" />
        </node>
        <node concept="3C2Fqt" id="2JnYSShOMpc" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="6LAVG$wSi2X" resolve="btn2" />
        </node>
      </node>
      <node concept="3BVgER" id="2JnYSShOMpf" role="3BVhZf">
        <ref role="U685f" node="6LAVG$wSi3T" resolve="double_door_error" />
        <node concept="3C2Fqt" id="2JnYSShOMpg" role="3BS8aA">
          <ref role="3C0D_Q" node="6LAVG$wSi2W" resolve="btn1" />
        </node>
        <node concept="3C2Fqt" id="2JnYSShOMph" role="3BS8aA">
          <ref role="3C0D_Q" node="6LAVG$wSi2X" resolve="btn2" />
        </node>
      </node>
      <node concept="3BL1Gj" id="6LAVG$wSi38" role="l5YBu">
        <ref role="3BL6cZ" node="6LAVG$wSi2V" resolve="buzzer" />
      </node>
    </node>
    <node concept="1cImFT" id="6LAVG$wSi3T" role="l5YBj">
      <property role="TrG5h" value="double_door_error" />
      <property role="1cImFU" value="3" />
    </node>
  </node>
</model>

