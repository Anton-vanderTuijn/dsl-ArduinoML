<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e8a37358-315e-4e80-b350-9e01d3a51d45(ArduinoML.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="ge5j" ref="r:5bf5c70d-4c1e-4b5b-ac48-7f5374e997a2(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G">
        <property id="7181286126212894140" name="doNotApplyOnTheFly" index="1$Xk0j" />
      </concept>
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="18kY7G" id="62oRKDP$QVK">
    <property role="TrG5h" value="unique_initial_state" />
    <property role="1$Xk0j" value="true" />
    <node concept="3clFbS" id="62oRKDP$QVL" role="18ibNy">
      <node concept="3clFbJ" id="62oRKDP$QVZ" role="3cqZAp">
        <node concept="3eOSWO" id="62oRKDP_1zP" role="3clFbw">
          <node concept="3cmrfG" id="62oRKDP_1B2" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2OqwBi" id="62oRKDP$Z8c" role="3uHU7B">
            <node concept="2OqwBi" id="62oRKDP$STZ" role="2Oq$k0">
              <node concept="2OqwBi" id="62oRKDP$R5W" role="2Oq$k0">
                <node concept="1YBJjd" id="62oRKDP$QW8" role="2Oq$k0">
                  <ref role="1YBMHb" node="62oRKDP$QVN" resolve="app" />
                </node>
                <node concept="3Tsc0h" id="62oRKDP$Rhy" role="2OqNvi">
                  <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                </node>
              </node>
              <node concept="3zZkjj" id="62oRKDP$WZa" role="2OqNvi">
                <node concept="1bVj0M" id="62oRKDP$WZc" role="23t8la">
                  <node concept="3clFbS" id="62oRKDP$WZd" role="1bW5cS">
                    <node concept="3clFbF" id="62oRKDP$X5d" role="3cqZAp">
                      <node concept="17R0WA" id="62oRKDP$YBo" role="3clFbG">
                        <node concept="3clFbT" id="62oRKDP$YK3" role="3uHU7w">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="2OqwBi" id="62oRKDP$XiW" role="3uHU7B">
                          <node concept="37vLTw" id="62oRKDP$X5c" role="2Oq$k0">
                            <ref role="3cqZAo" node="62oRKDP$WZe" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="62oRKDP$XK_" role="2OqNvi">
                            <ref role="3TsBF5" to="ge5j:6LAVG$wQHxf" resolve="isInitial" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="62oRKDP$WZe" role="1bW2Oz">
                    <property role="TrG5h" value="state" />
                    <node concept="2jxLKc" id="62oRKDP$WZf" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="34oBXx" id="62oRKDP$ZH$" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbS" id="62oRKDP$QW1" role="3clFbx">
          <node concept="2MkqsV" id="62oRKDP_1Jm" role="3cqZAp">
            <node concept="3cpWs3" id="62oRKDP_3SE" role="2MkJ7o">
              <node concept="3cpWs3" id="62oRKDP_22d" role="3uHU7B">
                <node concept="Xl_RD" id="62oRKDP_1Jv" role="3uHU7B">
                  <property role="Xl_RC" value="Duplicated initial state detected in" />
                </node>
                <node concept="2OqwBi" id="62oRKDP_2je" role="3uHU7w">
                  <node concept="1YBJjd" id="62oRKDP_26I" role="2Oq$k0">
                    <ref role="1YBMHb" node="62oRKDP$QVN" resolve="app" />
                  </node>
                  <node concept="3TrcHB" id="62oRKDP_2LM" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="62oRKDP_4aS" role="3uHU7w">
                <property role="Xl_RC" value="!" />
              </node>
            </node>
            <node concept="1YBJjd" id="62oRKDP_2TG" role="1urrMF">
              <ref role="1YBMHb" node="62oRKDP$QVN" resolve="app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="62oRKDP$QVN" role="1YuTPh">
      <property role="TrG5h" value="app" />
      <ref role="1YaFvo" to="ge5j:62oRKDPzNr3" resolve="App" />
    </node>
  </node>
  <node concept="18kY7G" id="2JnYSShTEIs">
    <property role="TrG5h" value="no_transition_to_same_state" />
    <node concept="3clFbS" id="2JnYSShTEIt" role="18ibNy">
      <node concept="3clFbJ" id="2JnYSShTHpq" role="3cqZAp">
        <node concept="2OqwBi" id="2JnYSShTKjm" role="3clFbw">
          <node concept="2OqwBi" id="2JnYSShTIBw" role="2Oq$k0">
            <node concept="1YBJjd" id="2JnYSShTItM" role="2Oq$k0">
              <ref role="1YBMHb" node="2JnYSShTEIv" resolve="state" />
            </node>
            <node concept="3Tsc0h" id="2JnYSShTIUH" role="2OqNvi">
              <ref role="3TtcxE" to="ge5j:508e52RTiuv" resolve="transitions" />
            </node>
          </node>
          <node concept="2HwmR7" id="2JnYSShTRy_" role="2OqNvi">
            <node concept="1bVj0M" id="2JnYSShTRyB" role="23t8la">
              <node concept="3clFbS" id="2JnYSShTRyC" role="1bW5cS">
                <node concept="3clFbF" id="2JnYSShTRyD" role="3cqZAp">
                  <node concept="3clFbC" id="2JnYSShTRyE" role="3clFbG">
                    <node concept="2OqwBi" id="2JnYSShTSj7" role="3uHU7w">
                      <node concept="1YBJjd" id="2JnYSShTRDf" role="2Oq$k0">
                        <ref role="1YBMHb" node="2JnYSShTEIv" resolve="state" />
                      </node>
                      <node concept="3TrcHB" id="2JnYSShTSHP" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2JnYSShTRyG" role="3uHU7B">
                      <node concept="2OqwBi" id="2JnYSShTRyH" role="2Oq$k0">
                        <node concept="37vLTw" id="2JnYSShTRyI" role="2Oq$k0">
                          <ref role="3cqZAo" node="2JnYSShTRyL" resolve="transition" />
                        </node>
                        <node concept="3TrEf2" id="2JnYSShTRyJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="ge5j:2JnYSShNRF1" resolve="state" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2JnYSShTRyK" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="2JnYSShTRyL" role="1bW2Oz">
                <property role="TrG5h" value="transition" />
                <node concept="2jxLKc" id="2JnYSShTRyM" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2JnYSShTHps" role="3clFbx">
          <node concept="2MkqsV" id="2JnYSShTSKw" role="3cqZAp">
            <node concept="3cpWs3" id="2JnYSShTTq5" role="2MkJ7o">
              <node concept="2OqwBi" id="2JnYSShTU4a" role="3uHU7w">
                <node concept="1YBJjd" id="2JnYSShTTOo" role="2Oq$k0">
                  <ref role="1YBMHb" node="2JnYSShTEIv" resolve="state" />
                </node>
                <node concept="3TrcHB" id="2JnYSShTUs8" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="Xl_RD" id="2JnYSShTSKG" role="3uHU7B">
                <property role="Xl_RC" value="Can't set transition's state to the current state where it's defined:" />
              </node>
            </node>
            <node concept="1YBJjd" id="2JnYSShTSLQ" role="1urrMF">
              <ref role="1YBMHb" node="2JnYSShTEIv" resolve="state" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2JnYSShTEIv" role="1YuTPh">
      <property role="TrG5h" value="state" />
      <ref role="1YaFvo" to="ge5j:62oRKDPzNri" resolve="State" />
    </node>
  </node>
  <node concept="18kY7G" id="44G9nFF2ooK">
    <property role="TrG5h" value="lcd_analog_action_cant_print_lcd_actuator" />
    <node concept="3clFbS" id="44G9nFF2ooL" role="18ibNy">
      <node concept="3clFbJ" id="44G9nFF2yNJ" role="3cqZAp">
        <node concept="2OqwBi" id="44G9nFF2zEn" role="3clFbw">
          <node concept="2OqwBi" id="44G9nFF2yYy" role="2Oq$k0">
            <node concept="1YBJjd" id="44G9nFF2yNV" role="2Oq$k0">
              <ref role="1YBMHb" node="44G9nFF2ooN" resolve="actionLCDAnalogReaderText" />
            </node>
            <node concept="3TrEf2" id="44G9nFF2z8_" role="2OqNvi">
              <ref role="3Tt5mk" to="ge5j:7Mto9RJ0fIU" resolve="brick" />
            </node>
          </node>
          <node concept="1mIQ4w" id="44G9nFF2zYT" role="2OqNvi">
            <node concept="chp4Y" id="44G9nFF2IjT" role="cj9EA">
              <ref role="cht4Q" to="ge5j:5iaO0WrUz9o" resolve="ActuatorLCD" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="44G9nFF2yNL" role="3clFbx">
          <node concept="2MkqsV" id="44G9nFF2$gC" role="3cqZAp">
            <node concept="Xl_RD" id="44G9nFF2$gO" role="2MkJ7o">
              <property role="Xl_RC" value="Can't print a LCD Screen" />
            </node>
            <node concept="1YBJjd" id="44G9nFF2$iF" role="1urrMF">
              <ref role="1YBMHb" node="44G9nFF2ooN" resolve="actionLCDAnalogReaderText" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="44G9nFF2ooN" role="1YuTPh">
      <property role="TrG5h" value="actionLCDAnalogReaderText" />
      <ref role="1YaFvo" to="ge5j:O0bPWK9L_$" resolve="ActionLCDAnalogReaderText" />
    </node>
  </node>
</model>

