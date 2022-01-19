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
        <reference id="6960558460116088533" name="next" index="l5YBv" />
        <child id="6960558460116088532" name="actions" index="l5YBu" />
      </concept>
      <concept id="6960558460117763511" name="ArduinoML.structure.SensorDigital" flags="ng" index="lc1EX" />
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
      <concept id="5766921242179917474" name="ArduinoML.structure.ActuatorAnalog" flags="ng" index="3BKuVM" />
      <concept id="5766921242180068163" name="ArduinoML.structure.ActionDigital" flags="ng" index="3BL1Gj">
        <property id="5766921242180082541" name="signal" index="3BL6cX" />
        <reference id="5766921242180082543" name="target" index="3BL6cZ" />
      </concept>
      <concept id="5766921242180082545" name="ArduinoML.structure.ActionAnalog" flags="ng" index="3BL6cx">
        <property id="5766921242180082546" name="signal" index="3BL6cy" />
        <reference id="5766921242180082548" name="target" index="3BL6c$" />
      </concept>
      <concept id="5766921242180872304" name="ArduinoML.structure.ActionLCD" flags="ng" index="3BO50w">
        <property id="5766921242180872307" name="text" index="3BO50z" />
        <reference id="5766921242180872309" name="target" index="3BO50_" />
      </concept>
      <concept id="5766921242181712879" name="ArduinoML.structure.ActionSleep" flags="ng" index="3BVgeZ">
        <property id="5766921242181712882" name="time_ms" index="3BVgey" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="l5YB9" id="62oRKDP$6Yq">
    <property role="TrG5h" value="LED" />
    <node concept="l5YBo" id="508e52ROi4B" role="l5YBj">
      <property role="TrG5h" value="startState" />
      <property role="l2b2C" value="true" />
      <ref role="l5YBv" node="508e52ROi4F" resolve="endState" />
      <node concept="3BL1Gj" id="508e52RP$Ot" role="l5YBu">
        <ref role="3BL6cZ" node="508e52RN03y" resolve="theLed" />
      </node>
      <node concept="3BL6cx" id="508e52RP$OU" role="l5YBu">
        <property role="3BL6cy" value="200" />
        <ref role="3BL6c$" node="508e52RP$OM" resolve="myPotentiometer" />
      </node>
      <node concept="3BL1Gj" id="508e52RQ6xF" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="508e52RN03y" resolve="theLed" />
      </node>
    </node>
    <node concept="l5YBo" id="508e52ROi4F" role="l5YBj">
      <property role="TrG5h" value="endState" />
      <ref role="l5YBv" node="508e52ROi4B" resolve="startState" />
      <node concept="3BO50w" id="508e52RQLxx" role="l5YBu">
        <property role="3BO50z" value="Hello MPS" />
        <ref role="3BO50_" node="508e52RKt9e" resolve="lcd1" />
      </node>
    </node>
    <node concept="lc1EX" id="508e52RNCNg" role="lcoPZ">
      <property role="TrG5h" value="ssss" />
      <property role="lcJm5" value="4" />
    </node>
    <node concept="l5YBf" id="508e52RN03y" role="l5YBg">
      <property role="TrG5h" value="theLed" />
      <property role="3BKuVa" value="11" />
    </node>
    <node concept="3BKuVM" id="508e52RP$OM" role="l5YBg">
      <property role="TrG5h" value="myPotentiometer" />
      <property role="3BKuVa" value="2" />
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
    <node concept="l5YBo" id="508e52RTJyq" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <ref role="l5YBv" node="508e52RTJyC" resolve="on" />
      <node concept="3BL1Gj" id="508e52RTJyu" role="l5YBu">
        <property role="3BL6cX" value="62oRKDPzNre/LOW" />
        <ref role="3BL6cZ" node="508e52RTJyi" resolve="led" />
      </node>
      <node concept="3BVgeZ" id="508e52RTJy$" role="l5YBu">
        <property role="3BVgey" value="1000" />
      </node>
    </node>
    <node concept="l5YBo" id="508e52RTJyC" role="l5YBj">
      <property role="TrG5h" value="on" />
      <ref role="l5YBv" node="508e52RTJyq" resolve="off" />
      <node concept="3BL1Gj" id="508e52RTJyJ" role="l5YBu">
        <ref role="3BL6cZ" node="508e52RTJyi" resolve="led" />
      </node>
      <node concept="3BVgeZ" id="508e52RTJyP" role="l5YBu">
        <property role="3BVgey" value="1000" />
      </node>
    </node>
    <node concept="lc1EX" id="508e52RTJyn" role="lcoPZ">
      <property role="TrG5h" value="button" />
      <property role="lcJm5" value="10" />
    </node>
    <node concept="l5YBf" id="508e52RTJyi" role="l5YBg">
      <property role="TrG5h" value="led" />
      <property role="3BKuVa" value="11" />
    </node>
  </node>
</model>

