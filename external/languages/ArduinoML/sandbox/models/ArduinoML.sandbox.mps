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
        <property id="6960558460116168610" name="isInitial" index="l2b2C" />
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
      <concept id="6091910209283437144" name="ArduinoML.structure.ActuatorLCD" flags="ng" index="1foe9n">
        <property id="5766921242179458249" name="rows" index="3BMIMp" />
        <property id="5766921242179458252" name="columns" index="3BMIMs" />
      </concept>
      <concept id="5766921242180068163" name="ArduinoML.structure.ActionDigital" flags="ng" index="3BL1Gj">
        <property id="5766921242180082541" name="signal" index="3BL6cX" />
        <reference id="5766921242180082543" name="target" index="3BL6cZ" />
      </concept>
      <concept id="5766921242181710567" name="ArduinoML.structure.Transition" flags="ng" index="3BVgER">
        <reference id="5766921242182133811" name="state" index="3BST1z" />
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
    <node concept="l5YBo" id="O0bPWK9$gw" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="1QS_xBSpCrO" role="3BVhZf">
        <ref role="3BST1z" node="7Mto9RIYbuo" resolve="on" />
        <node concept="3C2Fqt" id="7Mto9RIYgZE" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUm" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="7Mto9RIYh0m" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="7Mto9RIYgZY" resolve="led" />
      </node>
      <node concept="X9NoS" id="7Mto9RJ65ly" role="l5YBu">
        <property role="2jyhSm" value="0" />
        <ref role="X9NoH" node="7Mto9RIYgZY" resolve="led" />
        <ref role="2jyhSj" node="1QS_xBSuAUu" resolve="lcd" />
      </node>
      <node concept="X9NoV" id="7Mto9RJ65lI" role="l5YBu">
        <property role="2jyhSm" value="1" />
        <ref role="2jBpGB" node="7Mto9RIYh0c" resolve="light" />
        <ref role="2jyhSj" node="1QS_xBSuAUu" resolve="lcd" />
      </node>
    </node>
    <node concept="l5YBo" id="7Mto9RIYbuo" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BL1Gj" id="7Mto9RIYhoW" role="l5YBu">
        <ref role="3BL6cZ" node="7Mto9RIYgZY" resolve="led" />
      </node>
      <node concept="3BVgER" id="7Mto9RIYgZx" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$gw" resolve="off" />
        <node concept="3C2Fqt" id="7Mto9RIYgZJ" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAUm" resolve="button" />
        </node>
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
    <node concept="l5YBo" id="508e52RWjqZ" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="508e52RWjrA" role="3BVhZf">
        <ref role="3BST1z" node="508e52RWjrn" resolve="on" />
        <node concept="3C2Fqt" id="508e52S3Txi" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSrq1r" resolve="btn" />
        </node>
      </node>
      <node concept="3BL1Gj" id="508e52RWjrs" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSrq1d" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK3B68" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSrq1j" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="508e52RWjrn" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BL1Gj" id="508e52RWjrx" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSrq1d" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK3B6g" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSrq1j" resolve="buzzer" />
      </node>
      <node concept="3BVgER" id="508e52RWjsq" role="3BVhZf">
        <ref role="3BST1z" node="508e52RWjqZ" resolve="off" />
        <node concept="3C2Fqt" id="508e52S3Txt" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSrq1r" resolve="btn" />
        </node>
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
    <node concept="l5YBo" id="O0bPWK43QO" role="l5YBj">
      <property role="TrG5h" value="alarm_off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="O0bPWK43Rk" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK43R5" resolve="alarm-on" />
        <node concept="3C2Fqt" id="O0bPWK43RH" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAU8" resolve="btn2" />
        </node>
        <node concept="3C2Fqt" id="O0bPWK43Rt" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAU0" resolve="btn1" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK43QS" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuATU" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK43R5" role="l5YBj">
      <property role="TrG5h" value="alarm_on" />
      <node concept="3BVgER" id="O0bPWK43RN" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK43QO" resolve="alarm-off" />
        <node concept="3C2Fqt" id="O0bPWK43RS" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAU0" resolve="btn1" />
        </node>
      </node>
      <node concept="3BVgER" id="O0bPWK43RZ" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK43QO" resolve="alarm-off" />
        <node concept="3C2Fqt" id="O0bPWK43Sm" role="3BS8aA">
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
    <node concept="l5YBo" id="O0bPWK9$cD" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <node concept="3BL1Gj" id="O0bPWK9$cH" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuAUV" resolve="led" />
      </node>
      <node concept="3BVgER" id="O0bPWK9$dh" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$cV" resolve="on-intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$dm" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAV1" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$cV" role="l5YBj">
      <property role="TrG5h" value="on_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$d3" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$cM" resolve="on" />
        <node concept="3C2Fqt" id="O0bPWK9$dc" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAV1" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$cM" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BVgER" id="O0bPWK9$dK" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$dp" resolve="off_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$dP" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAV1" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$cS" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSuAUV" resolve="led" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$dp" role="l5YBj">
      <property role="TrG5h" value="off_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$dA" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$cD" resolve="off" />
        <node concept="3C2Fqt" id="O0bPWK9$dF" role="3BS8aA">
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
    <node concept="l5YBo" id="O0bPWK9$ea" role="l5YBj">
      <property role="TrG5h" value="alarm_off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="O0bPWK9$fo" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$eP" resolve="alarm_s1_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$ft" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$ee" role="l5YBu">
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
      <node concept="3BVgER" id="O0bPWK9$fy" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$eo" resolve="alarm_s1" />
        <node concept="3C2Fqt" id="O0bPWK9$fB" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eo" role="l5YBj">
      <property role="TrG5h" value="alarm_s1" />
      <node concept="3BVgER" id="O0bPWK9$fG" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$eZ" resolve="alarm_s2_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$fP" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$ev" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSuAUF" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eZ" role="l5YBj">
      <property role="TrG5h" value="alarm_s2_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$fU" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$ey" resolve="alarm_s2" />
        <node concept="3C2Fqt" id="O0bPWK9$fZ" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$ey" role="l5YBj">
      <property role="TrG5h" value="alarm_s2" />
      <node concept="3BL1Gj" id="O0bPWK9$eF" role="l5YBu">
        <ref role="3BL6cZ" node="1QS_xBSuAU_" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$eL" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="1QS_xBSuAUF" resolve="buzzer" />
      </node>
      <node concept="3BVgER" id="O0bPWK9$g4" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$fa" resolve="alarm_off_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$g9" role="3BS8aA">
          <ref role="3C0D_Q" node="1QS_xBSuAUN" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$fa" role="l5YBj">
      <property role="TrG5h" value="alarm_off_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$ge" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$ea" resolve="alarm_off" />
        <node concept="3C2Fqt" id="O0bPWK9$gn" role="3BS8aA">
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
    <node concept="l5YBo" id="7Mto9RJ2Yvk" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="7Mto9RJ2Yvl" role="3BVhZf">
        <ref role="3BST1z" node="7Mto9RJ2Yvq" resolve="on" />
        <node concept="3BVXyM" id="7Mto9RJ2Yvy" role="3BS8aA">
          <property role="3BVWI4" value="&lt;" />
          <property role="3BVWLm" value="30" />
          <ref role="3BVXyP" node="7Mto9RJ2Yvg" resolve="light" />
        </node>
      </node>
      <node concept="3BL1Gj" id="7Mto9RJ2Yvn" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="7Mto9RJ2Yvh" resolve="led" />
      </node>
      <node concept="X9NoS" id="7Mto9RJ65kQ" role="l5YBu">
        <property role="2jyhSm" value="0" />
        <ref role="X9NoH" node="7Mto9RJ2Yvh" resolve="led" />
        <ref role="2jyhSj" node="7Mto9RJ2Yvj" resolve="lcd" />
      </node>
      <node concept="X9NoV" id="7Mto9RJ65kE" role="l5YBu">
        <property role="2jyhSm" value="1" />
        <ref role="2jBpGB" node="7Mto9RJ2Yvg" resolve="light" />
        <ref role="2jyhSj" node="7Mto9RJ2Yvj" resolve="lcd" />
      </node>
    </node>
    <node concept="l5YBo" id="7Mto9RJ2Yvq" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BL1Gj" id="7Mto9RJ2Yvr" role="l5YBu">
        <ref role="3BL6cZ" node="7Mto9RJ2Yvh" resolve="led" />
      </node>
      <node concept="3BVgER" id="7Mto9RJ2Yvs" role="3BVhZf">
        <ref role="3BST1z" node="7Mto9RJ2Yvk" resolve="off" />
        <node concept="3BVXyM" id="7Mto9RJ3lKR" role="3BS8aA">
          <property role="3BVWLm" value="30" />
          <property role="3BVWI4" value="&gt;=" />
          <ref role="3BVXyP" node="7Mto9RJ2Yvg" resolve="light" />
        </node>
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
</model>

