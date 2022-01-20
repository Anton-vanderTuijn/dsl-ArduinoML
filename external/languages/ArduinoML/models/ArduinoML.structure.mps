<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5bf5c70d-4c1e-4b5b-ac48-7f5374e997a2(ArduinoML.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration_Old" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration_Old" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="62oRKDPzNr3">
    <property role="EcuMT" value="6960558460116088515" />
    <property role="TrG5h" value="App" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="62oRKDPzNr4" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="62oRKDPzNrp" role="1TKVEi">
      <property role="IQ2ns" value="6960558460116088537" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="states" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="62oRKDPzNri" resolve="State" />
    </node>
    <node concept="1TJgyj" id="62oRKDPzNrq" role="1TKVEi">
      <property role="IQ2ns" value="6960558460116088538" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actuators" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5iaO0WrUz9k" resolve="IActuator" />
    </node>
    <node concept="1TJgyj" id="62oRKDPEl9P" role="1TKVEi">
      <property role="IQ2ns" value="6960558460117799541" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sensors" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="62oRKDPEyDQ" resolve="ISensor" />
    </node>
    <node concept="1TJgyj" id="508e52RKbsH" role="1TKVEi">
      <property role="IQ2ns" value="5766921242179319597" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="lcd_screens" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5iaO0WrUz9o" resolve="ActuatorLCD" />
    </node>
    <node concept="PrWs8" id="62oRKDP_8HH" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="62oRKDPzNr5">
    <property role="EcuMT" value="6960558460116088517" />
    <property role="TrG5h" value="ActuatorDigital" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="508e52RMAYW" role="PzmwI">
      <ref role="PrY4T" node="5iaO0WrUz9k" resolve="IActuator" />
    </node>
  </node>
  <node concept="AxPO7" id="62oRKDPzNrc">
    <property role="3F6X1D" value="6960558460116088524" />
    <property role="TrG5h" value="SIGNAL" />
    <property role="3lZH7k" value="hrlZj6Q/derive_from_internal_value" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="62oRKDPzNrd" role="M5hS2">
      <property role="1uS6qv" value="HIGH" />
      <property role="1uS6qo" value="high" />
    </node>
    <node concept="M4N5e" id="62oRKDPzNre" role="M5hS2">
      <property role="1uS6qv" value="LOW" />
      <property role="1uS6qo" value="low" />
    </node>
  </node>
  <node concept="1TIwiD" id="62oRKDPzNri">
    <property role="EcuMT" value="6960558460116088530" />
    <property role="TrG5h" value="State" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="62oRKDPzNrj" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="62oRKDPzNrk" role="1TKVEi">
      <property role="IQ2ns" value="6960558460116088532" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="508e52RN17J" resolve="IAction" />
    </node>
    <node concept="1TJgyj" id="508e52RTiuv" role="1TKVEi">
      <property role="IQ2ns" value="5766921242181707679" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transitions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="508e52RTjbA" resolve="ITransition" />
    </node>
    <node concept="1TJgyi" id="62oRKDP$6Yy" role="1TKVEl">
      <property role="IQ2nx" value="6960558460116168610" />
      <property role="TrG5h" value="isInitial" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="62oRKDPEcmR">
    <property role="EcuMT" value="6960558460117763511" />
    <property role="TrG5h" value="SensorDigital" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="508e52RMtqu" role="PzmwI">
      <ref role="PrY4T" node="62oRKDPEyDQ" resolve="ISensor" />
    </node>
  </node>
  <node concept="PlHQZ" id="62oRKDPEyDQ">
    <property role="EcuMT" value="6960558460117854838" />
    <property role="TrG5h" value="ISensor" />
    <node concept="PrWs8" id="508e52RKbsM" role="PrDN$">
      <ref role="PrY4T" node="O0bPWK9L_P" resolve="IBrick" />
    </node>
  </node>
  <node concept="1TIwiD" id="62oRKDPEyEi">
    <property role="EcuMT" value="6960558460117854866" />
    <property role="TrG5h" value="SensorAnalog" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="508e52RMtqw" role="PzmwI">
      <ref role="PrY4T" node="62oRKDPEyDQ" resolve="ISensor" />
    </node>
  </node>
  <node concept="PlHQZ" id="5iaO0WrUz9k">
    <property role="EcuMT" value="6091910209283437140" />
    <property role="TrG5h" value="IActuator" />
    <node concept="PrWs8" id="508e52RJCQK" role="PrDN$">
      <ref role="PrY4T" node="O0bPWK9L_P" resolve="IBrick" />
    </node>
  </node>
  <node concept="1TIwiD" id="5iaO0WrUz9o">
    <property role="EcuMT" value="6091910209283437144" />
    <property role="TrG5h" value="ActuatorLCD" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5iaO0WrUz9r" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="5iaO0WrUz9u" role="1TKVEl">
      <property role="IQ2nx" value="6091910209283437150" />
      <property role="TrG5h" value="bus" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="508e52RKHj9" role="1TKVEl">
      <property role="IQ2nx" value="5766921242179458249" />
      <property role="TrG5h" value="rows" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="508e52RKHjc" role="1TKVEl">
      <property role="IQ2nx" value="5766921242179458252" />
      <property role="TrG5h" value="columns" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="508e52RMtqy">
    <property role="EcuMT" value="5766921242179917474" />
    <property role="TrG5h" value="ActuatorAnalog" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="508e52RMtqz" role="PzmwI">
      <ref role="PrY4T" node="5iaO0WrUz9k" resolve="IActuator" />
    </node>
  </node>
  <node concept="PlHQZ" id="508e52RN17J">
    <property role="EcuMT" value="5766921242180063727" />
    <property role="TrG5h" value="IAction" />
  </node>
  <node concept="1TIwiD" id="508e52RN2d3">
    <property role="EcuMT" value="5766921242180068163" />
    <property role="TrG5h" value="ActionDigital" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="508e52RN5HH" role="1TKVEl">
      <property role="IQ2nx" value="5766921242180082541" />
      <property role="TrG5h" value="signal" />
      <ref role="AX2Wp" node="62oRKDPzNrc" resolve="SIGNAL" />
    </node>
    <node concept="1TJgyj" id="508e52RN5HJ" role="1TKVEi">
      <property role="IQ2ns" value="5766921242180082543" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="62oRKDPzNr5" resolve="ActuatorDigital" />
    </node>
    <node concept="PrWs8" id="508e52RPoVi" role="PzmwI">
      <ref role="PrY4T" node="508e52RN17J" resolve="IAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="508e52RN5HL">
    <property role="EcuMT" value="5766921242180082545" />
    <property role="TrG5h" value="ActionAnalog" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="508e52RN5HM" role="1TKVEl">
      <property role="IQ2nx" value="5766921242180082546" />
      <property role="TrG5h" value="signal" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="508e52RN5HO" role="1TKVEi">
      <property role="IQ2ns" value="5766921242180082548" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="508e52RMtqy" resolve="ActuatorAnalog" />
    </node>
    <node concept="PrWs8" id="508e52RNCDV" role="PzmwI">
      <ref role="PrY4T" node="508e52RN17J" resolve="IAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="508e52RQ6xK">
    <property role="EcuMT" value="5766921242180872304" />
    <property role="TrG5h" value="ActionLCDSimpleText" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="508e52RQ6xL" role="PzmwI">
      <ref role="PrY4T" node="508e52RN17J" resolve="IAction" />
    </node>
    <node concept="1TJgyi" id="508e52RQ6xN" role="1TKVEl">
      <property role="IQ2nx" value="5766921242180872307" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="508e52RQ6xP" role="1TKVEi">
      <property role="IQ2ns" value="5766921242180872309" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5iaO0WrUz9o" resolve="ActuatorLCD" />
    </node>
  </node>
  <node concept="PlHQZ" id="508e52RTjbA">
    <property role="EcuMT" value="5766921242181710566" />
    <property role="TrG5h" value="ITransition" />
  </node>
  <node concept="1TIwiD" id="508e52RTjbB">
    <property role="EcuMT" value="5766921242181710567" />
    <property role="TrG5h" value="Transition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="508e52RTjbC" role="PzmwI">
      <ref role="PrY4T" node="508e52RTjbA" resolve="ITransition" />
    </node>
    <node concept="1TJgyj" id="508e52RUbFQ" role="1TKVEi">
      <property role="IQ2ns" value="5766921242181942006" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="conditions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="508e52RU3_T" resolve="ICondition" />
    </node>
    <node concept="1TJgyj" id="508e52RUUwN" role="1TKVEi">
      <property role="IQ2ns" value="5766921242182133811" />
      <property role="20kJfa" value="state" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="62oRKDPzNri" resolve="State" />
    </node>
  </node>
  <node concept="1TIwiD" id="508e52RTjJJ">
    <property role="EcuMT" value="5766921242181712879" />
    <property role="TrG5h" value="ActionSleep" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="508e52RTjJK" role="PzmwI">
      <ref role="PrY4T" node="508e52RN17J" resolve="IAction" />
    </node>
    <node concept="1TJgyi" id="508e52RTjJM" role="1TKVEl">
      <property role="IQ2nx" value="5766921242181712882" />
      <property role="TrG5h" value="time_ms" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="508e52RTY3y">
    <property role="EcuMT" value="5766921242181886178" />
    <property role="TrG5h" value="ConditionAnalog" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="508e52RTY3_" role="1TKVEi">
      <property role="IQ2ns" value="5766921242181886181" />
      <property role="20kJfa" value="sensor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="62oRKDPEyEi" resolve="SensorAnalog" />
    </node>
    <node concept="1TJgyi" id="508e52RTZfk" role="1TKVEl">
      <property role="IQ2nx" value="5766921242181891028" />
      <property role="TrG5h" value="comparator" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="508e52RTZg6" role="1TKVEl">
      <property role="IQ2nx" value="5766921242181891078" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="508e52RU3_X" role="PzmwI">
      <ref role="PrY4T" node="508e52RU3_T" resolve="ICondition" />
    </node>
  </node>
  <node concept="PlHQZ" id="508e52RU3_T">
    <property role="EcuMT" value="5766921242181908857" />
    <property role="TrG5h" value="ICondition" />
  </node>
  <node concept="1TIwiD" id="508e52RU3_U">
    <property role="EcuMT" value="5766921242181908858" />
    <property role="TrG5h" value="ConditionDigital" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="508e52RU3_V" role="PzmwI">
      <ref role="PrY4T" node="508e52RU3_T" resolve="ICondition" />
    </node>
    <node concept="1TJgyi" id="508e52RU3_Z" role="1TKVEl">
      <property role="IQ2nx" value="5766921242181908863" />
      <property role="TrG5h" value="signal" />
      <ref role="AX2Wp" node="62oRKDPzNrc" resolve="SIGNAL" />
    </node>
    <node concept="1TJgyj" id="508e52RU3A1" role="1TKVEi">
      <property role="IQ2ns" value="5766921242181908865" />
      <property role="20kJfa" value="sensor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="62oRKDPEcmR" resolve="SensorDigital" />
    </node>
  </node>
  <node concept="1TIwiD" id="508e52S08mg">
    <property role="EcuMT" value="5766921242183501200" />
    <property role="TrG5h" value="SensorButtonDigital" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="508e52S08mh" role="PzmwI">
      <ref role="PrY4T" node="62oRKDPEyDQ" resolve="ISensor" />
    </node>
  </node>
  <node concept="1TIwiD" id="508e52S0CVd">
    <property role="EcuMT" value="5766921242183634637" />
    <property role="TrG5h" value="ConditionDigitalButton" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="508e52S2E4A" role="1TKVEi">
      <property role="IQ2ns" value="5766921242184163622" />
      <property role="20kJfa" value="sensor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="508e52S08mg" resolve="SensorButtonDigital" />
    </node>
    <node concept="1TJgyi" id="508e52S2E4$" role="1TKVEl">
      <property role="IQ2nx" value="5766921242184163620" />
      <property role="TrG5h" value="signal" />
      <ref role="AX2Wp" node="62oRKDPzNrc" resolve="SIGNAL" />
    </node>
    <node concept="PrWs8" id="508e52S2BSl" role="PzmwI">
      <ref role="PrY4T" node="508e52RU3_T" resolve="ICondition" />
    </node>
  </node>
  <node concept="1TIwiD" id="O0bPWK9L_$">
    <property role="EcuMT" value="936800808369330532" />
    <property role="TrG5h" value="ActionLCDAnalogReaderText" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="O0bPWK9L_K" role="1TKVEi">
      <property role="IQ2ns" value="936800808369330544" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5iaO0WrUz9o" resolve="ActuatorLCD" />
    </node>
    <node concept="PrWs8" id="O0bPWK9L__" role="PzmwI">
      <ref role="PrY4T" node="508e52RN17J" resolve="IAction" />
    </node>
  </node>
  <node concept="1TIwiD" id="O0bPWK9L_B">
    <property role="EcuMT" value="936800808369330535" />
    <property role="TrG5h" value="ActionLCDDigitalReaderText" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="O0bPWK9L_G" role="1TKVEi">
      <property role="IQ2ns" value="936800808369330540" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5iaO0WrUz9o" resolve="ActuatorLCD" />
    </node>
    <node concept="1TJgyj" id="O0bPWK9L_M" role="1TKVEi">
      <property role="IQ2ns" value="936800808369330546" />
      <property role="20kJfa" value="brick" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="O0bPWK9L_P" resolve="IBrick" />
    </node>
    <node concept="PrWs8" id="O0bPWK9L_C" role="PzmwI">
      <ref role="PrY4T" node="508e52RN17J" resolve="IAction" />
    </node>
  </node>
  <node concept="PlHQZ" id="O0bPWK9L_P">
    <property role="EcuMT" value="936800808369330549" />
    <property role="TrG5h" value="IBrick" />
    <node concept="1TJgyi" id="O0bPWKaXTl" role="1TKVEl">
      <property role="IQ2nx" value="936800808369643093" />
      <property role="TrG5h" value="pin" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="O0bPWKaXTn" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

