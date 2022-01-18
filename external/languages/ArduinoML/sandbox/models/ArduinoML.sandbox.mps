<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a7de18b7-61d4-4f5f-bfef-121673a859b4(ArduinoML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML">
      <concept id="6960558460116088520" name="ArduinoML.structure.Action" flags="ng" index="l5YB2">
        <property id="6960558460116088535" name="signal" index="l5YBt" />
        <reference id="6960558460116088536" name="target" index="l5YBi" />
      </concept>
      <concept id="6960558460116088515" name="ArduinoML.structure.App" flags="ng" index="l5YB9">
        <child id="6960558460116088538" name="actuators" index="l5YBg" />
        <child id="6960558460116088537" name="states" index="l5YBj" />
      </concept>
      <concept id="6960558460116088517" name="ArduinoML.structure.Actuator" flags="ng" index="l5YBf">
        <property id="6960558460116088519" name="pin" index="l5YBd" />
      </concept>
      <concept id="6960558460116088530" name="ArduinoML.structure.State" flags="ng" index="l5YBo">
        <property id="6960558460116168610" name="isInitial" index="l2b2C" />
        <reference id="6960558460116088533" name="next" index="l5YBv" />
        <child id="6960558460116088532" name="actions" index="l5YBu" />
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
    <node concept="l5YBo" id="62oRKDP$6Yr" role="l5YBj">
      <property role="TrG5h" value="on" />
      <ref role="l5YBv" node="62oRKDP$6Yv" resolve="off" />
      <node concept="l5YB2" id="62oRKDP$6Ys" role="l5YBu">
        <ref role="l5YBi" node="62oRKDP$6Yt" resolve="theLed" />
      </node>
    </node>
    <node concept="l5YBo" id="62oRKDP$6Yv" role="l5YBj">
      <property role="TrG5h" value="off" />
      <property role="l2b2C" value="true" />
      <ref role="l5YBv" node="62oRKDP$6Yr" resolve="on" />
      <node concept="l5YB2" id="62oRKDP$6Yw" role="l5YBu">
        <property role="l5YBt" value="62oRKDPzNre/LOW" />
        <ref role="l5YBi" node="62oRKDP$6Yt" resolve="theLed" />
      </node>
    </node>
    <node concept="l5YBf" id="62oRKDP$6Yt" role="l5YBg">
      <property role="TrG5h" value="theLed" />
      <property role="l5YBd" value="13" />
    </node>
  </node>
</model>

