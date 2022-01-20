<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a7de18b7-61d4-4f5f-bfef-121673a859b4(ArduinoML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML">
      <concept id="6960558460116088515" name="ArduinoML.structure.App" flags="ng" index="l5YB9">
        <child id="6960558460116088538" name="actuators" index="l5YBg" />
        <child id="6960558460116088537" name="states" index="l5YBj" />
        <child id="6960558460117799541" name="sensors" index="lcoPZ" />
        <child id="5766921242179319597" name="lcd_screens" index="3BM8XX" />
      </concept>
      <concept id="6960558460116088517" name="ArduinoML.structure.ActuatorDigital" flags="ng" index="l5YBf" />
      <concept id="6960558460116088530" name="ArduinoML.structure.State" flags="ng" index="l5YBo">
        <property id="6960558460116168610" name="isInitial" index="l2b2C" />
        <child id="6960558460116088532" name="actions" index="l5YBu" />
        <child id="5766921242181707679" name="transitions" index="3BVhZf" />
      </concept>
      <concept id="6960558460117854838" name="ArduinoML.structure.ISensor" flags="ng" index="lcJlW">
        <property id="6960558460117854863" name="pin" index="lcJm5" />
      </concept>
      <concept id="6091910209283437144" name="ArduinoML.structure.ActuatorLCD" flags="ng" index="1foe9n">
        <property id="6091910209283437150" name="bus" index="1foe9h" />
        <property id="5766921242179458249" name="rows" index="3BMIMp" />
        <property id="5766921242179458252" name="columns" index="3BMIMs" />
      </concept>
      <concept id="6091910209283437140" name="ArduinoML.structure.IActuator" flags="ng" index="1foe9r">
        <property id="5766921242179917466" name="pin" index="3BKuVa" />
      </concept>
      <concept id="5766921242180068163" name="ArduinoML.structure.ActionDigital" flags="ng" index="3BL1Gj">
        <property id="5766921242180082541" name="signal" index="3BL6cX" />
        <reference id="5766921242180082543" name="target" index="3BL6cZ" />
      </concept>
      <concept id="5766921242181710567" name="ArduinoML.structure.Transition" flags="ng" index="3BVgER">
        <reference id="5766921242182133811" name="state" index="3BST1z" />
        <child id="5766921242181942006" name="conditions" index="3BS8aA" />
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
    <property role="TrG5h" value="LCD Screen Demo" />
    <node concept="l5YBo" id="O0bPWK9$gw" role="l5YBj">
      <property role="TrG5h" value="off" />
    </node>
    <node concept="3C2bR0" id="O0bPWK9$gt" role="lcoPZ">
      <property role="TrG5h" value="button" />
      <property role="lcJm5" value="9" />
    </node>
    <node concept="l5YBf" id="508e52RN03y" role="l5YBg">
      <property role="TrG5h" value="led" />
      <property role="3BKuVa" value="11" />
    </node>
    <node concept="1foe9n" id="508e52RKt9e" role="3BM8XX">
      <property role="TrG5h" value="lcd1" />
      <property role="1foe9h" value="2" />
      <property role="3BMIMs" value="16" />
      <property role="3BMIMp" value="2" />
    </node>
  </node>
  <node concept="l5YB9" id="508e52RTJyd">
    <property role="TrG5h" value="Very simple alarm" />
    <node concept="l5YBo" id="508e52RWjqZ" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="508e52RWjrA" role="3BVhZf">
        <ref role="3BST1z" node="508e52RWjrn" resolve="on" />
        <node concept="3C2Fqt" id="508e52S3Txi" role="3BS8aA">
          <ref role="3C0D_Q" node="508e52S2BQn" resolve="btn" />
        </node>
      </node>
      <node concept="3BL1Gj" id="508e52RWjrs" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="508e52RN03y" resolve="theLed" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK3B68" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="O0bPWK3B61" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="508e52RWjrn" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BL1Gj" id="508e52RWjrx" role="l5YBu">
        <ref role="3BL6cZ" node="508e52RN03y" resolve="theLed" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK3B6g" role="l5YBu">
        <ref role="3BL6cZ" node="O0bPWK3B61" resolve="buzzer" />
      </node>
      <node concept="3BVgER" id="508e52RWjsq" role="3BVhZf">
        <ref role="3BST1z" node="508e52RWjqZ" resolve="off" />
        <node concept="3C2Fqt" id="508e52S3Txt" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="508e52S2BQn" resolve="btn" />
        </node>
      </node>
    </node>
    <node concept="3C2bR0" id="508e52S2BQn" role="lcoPZ">
      <property role="TrG5h" value="btn" />
      <property role="lcJm5" value="9" />
    </node>
    <node concept="l5YBf" id="508e52RW$gj" role="l5YBg">
      <property role="TrG5h" value="led" />
      <property role="3BKuVa" value="11" />
    </node>
    <node concept="l5YBf" id="O0bPWK3B61" role="l5YBg">
      <property role="TrG5h" value="buzzer" />
      <property role="3BKuVa" value="12" />
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK43Qu">
    <property role="TrG5h" value="Dual-check alarm" />
    <node concept="l5YBo" id="O0bPWK43QO" role="l5YBj">
      <property role="TrG5h" value="alarm_off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="O0bPWK43Rk" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK43R5" resolve="alarm-on" />
        <node concept="3C2Fqt" id="O0bPWK43RH" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK43QK" resolve="btn2" />
        </node>
        <node concept="3C2Fqt" id="O0bPWK43Rt" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK43QE" resolve="btn1" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK43QS" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="O0bPWK43Qx" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK43R5" role="l5YBj">
      <property role="TrG5h" value="alarm_on" />
      <node concept="3BVgER" id="O0bPWK43RN" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK43QO" resolve="alarm-off" />
        <node concept="3C2Fqt" id="O0bPWK43RS" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="O0bPWK43QE" resolve="btn1" />
        </node>
      </node>
      <node concept="3BVgER" id="O0bPWK43RZ" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK43QO" resolve="alarm-off" />
        <node concept="3C2Fqt" id="O0bPWK43Sm" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK43QK" resolve="btn2" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK43Rf" role="l5YBu">
        <ref role="3BL6cZ" node="O0bPWK43Qx" resolve="buzzer" />
      </node>
    </node>
    <node concept="3C2bR0" id="O0bPWK43QE" role="lcoPZ">
      <property role="TrG5h" value="btn1" />
      <property role="lcJm5" value="9" />
    </node>
    <node concept="3C2bR0" id="O0bPWK43QK" role="lcoPZ">
      <property role="TrG5h" value="btn2" />
      <property role="lcJm5" value="10" />
    </node>
    <node concept="l5YBf" id="O0bPWK43Qx" role="l5YBg">
      <property role="TrG5h" value="buzzer" />
      <property role="3BKuVa" value="12" />
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK9$cu">
    <property role="TrG5h" value="State-based alarm" />
    <node concept="l5YBo" id="O0bPWK9$cD" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <node concept="3BL1Gj" id="O0bPWK9$cH" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="O0bPWK9$cx" resolve="led" />
      </node>
      <node concept="3BVgER" id="O0bPWK9$dh" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$cV" resolve="on-intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$dm" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK9$cA" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$cV" role="l5YBj">
      <property role="TrG5h" value="on_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$d3" role="3BVhZf">
        <ref role="3BST1z" node="508e52RWjrn" resolve="on" />
        <node concept="3C2Fqt" id="O0bPWK9$dc" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="O0bPWK9$cA" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$cM" role="l5YBj">
      <property role="TrG5h" value="on" />
      <node concept="3BVgER" id="O0bPWK9$dK" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$dp" resolve="off_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$dP" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK9$cA" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$cS" role="l5YBu">
        <ref role="3BL6cZ" node="O0bPWK9$cx" resolve="led" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$dp" role="l5YBj">
      <property role="TrG5h" value="off_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$dA" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$cD" resolve="off" />
        <node concept="3C2Fqt" id="O0bPWK9$dF" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="O0bPWK9$cA" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="3C2bR0" id="O0bPWK9$cA" role="lcoPZ">
      <property role="TrG5h" value="button" />
      <property role="lcJm5" value="9" />
    </node>
    <node concept="l5YBf" id="O0bPWK9$cx" role="l5YBg">
      <property role="TrG5h" value="led" />
      <property role="3BKuVa" value="11" />
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK9$dS">
    <property role="TrG5h" value="Multi-state Alarm" />
    <node concept="l5YBo" id="O0bPWK9$ea" role="l5YBj">
      <property role="TrG5h" value="alarm_off" />
      <property role="l2b2C" value="true" />
      <node concept="3BVgER" id="O0bPWK9$fo" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$eP" resolve="alarm_s1_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$ft" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK9$e7" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$ee" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="O0bPWK9$dV" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$ek" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="O0bPWK9$e1" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eP" role="l5YBj">
      <property role="TrG5h" value="alarm_s1_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$fy" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$eo" resolve="alarm_s1" />
        <node concept="3C2Fqt" id="O0bPWK9$fB" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="O0bPWK9$e7" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eo" role="l5YBj">
      <property role="TrG5h" value="alarm_s1" />
      <node concept="3BVgER" id="O0bPWK9$fG" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$eZ" resolve="alarm_s2_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$fP" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK9$e7" resolve="button" />
        </node>
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$ev" role="l5YBu">
        <ref role="3BL6cZ" node="O0bPWK9$e1" resolve="buzzer" />
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$eZ" role="l5YBj">
      <property role="TrG5h" value="alarm_s2_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$fU" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$ey" resolve="alarm_s2" />
        <node concept="3C2Fqt" id="O0bPWK9$fZ" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="O0bPWK9$e7" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$ey" role="l5YBj">
      <property role="TrG5h" value="alarm_s2" />
      <node concept="3BL1Gj" id="O0bPWK9$eF" role="l5YBu">
        <ref role="3BL6cZ" node="O0bPWK9$dV" resolve="led" />
      </node>
      <node concept="3BL1Gj" id="O0bPWK9$eL" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="O0bPWK9$e1" resolve="buzzer" />
      </node>
      <node concept="3BVgER" id="O0bPWK9$g4" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$fa" resolve="alarm_off_intermediary" />
        <node concept="3C2Fqt" id="O0bPWK9$g9" role="3BS8aA">
          <ref role="3C0D_Q" node="O0bPWK9$e7" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="l5YBo" id="O0bPWK9$fa" role="l5YBj">
      <property role="TrG5h" value="alarm_off_intermediary" />
      <node concept="3BVgER" id="O0bPWK9$ge" role="3BVhZf">
        <ref role="3BST1z" node="O0bPWK9$ea" resolve="alarm_off" />
        <node concept="3C2Fqt" id="O0bPWK9$gn" role="3BS8aA">
          <property role="3C0D_O" value="62oRKDPzNre/LOW" />
          <ref role="3C0D_Q" node="O0bPWK9$e7" resolve="button" />
        </node>
      </node>
    </node>
    <node concept="3C2bR0" id="O0bPWK9$e7" role="lcoPZ">
      <property role="TrG5h" value="button" />
      <property role="lcJm5" value="9" />
    </node>
    <node concept="l5YBf" id="O0bPWK9$dV" role="l5YBg">
      <property role="TrG5h" value="led" />
      <property role="3BKuVa" value="11" />
    </node>
    <node concept="l5YBf" id="O0bPWK9$e1" role="l5YBg">
      <property role="TrG5h" value="buzzer" />
      <property role="3BKuVa" value="12" />
    </node>
  </node>
</model>

