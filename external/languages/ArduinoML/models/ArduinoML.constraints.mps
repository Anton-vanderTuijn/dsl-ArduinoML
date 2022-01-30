<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:06d9b447-8d1b-4869-8d49-9efa8fd9576c(ArduinoML.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="ge5j" ref="r:5bf5c70d-4c1e-4b5b-ac48-7f5374e997a2(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="8401916545537438642" name="jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory" flags="ng" index="1dDu$B">
        <reference id="8401916545537438643" name="kind" index="1dDu$A" />
      </concept>
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="62oRKDP$$ke">
    <ref role="1M2myG" to="ge5j:5iaO0WrUz9k" resolve="IActuator" />
    <node concept="EnEH3" id="62oRKDP$$kf" role="1MhHOB">
      <ref role="EomxK" to="ge5j:O0bPWKaXTl" resolve="pin" />
      <node concept="QB0g5" id="62oRKDP$$o7" role="QCWH9">
        <node concept="3clFbS" id="62oRKDP$$o8" role="2VODD2">
          <node concept="3clFbF" id="62oRKDP$$sJ" role="3cqZAp">
            <node concept="1Wc70l" id="62oRKDP$AVP" role="3clFbG">
              <node concept="2dkUwp" id="62oRKDP$Bom" role="3uHU7w">
                <node concept="3cmrfG" id="62oRKDP$B_M" role="3uHU7w">
                  <property role="3cmrfH" value="13" />
                </node>
                <node concept="1Wqviy" id="62oRKDP$Ber" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="62oRKDP$A8C" role="3uHU7B">
                <node concept="1Wqviy" id="62oRKDP$$sI" role="3uHU7B" />
                <node concept="3cmrfG" id="62oRKDP$A9c" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="62oRKDP_8Eh">
    <ref role="1M2myG" to="ge5j:6LAVG$wQHxa" resolve="IState" />
    <node concept="EnEH3" id="2JnYSShSiUL" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="2JnYSShSiVy" role="QCWH9">
        <node concept="3clFbS" id="2JnYSShSiVz" role="2VODD2">
          <node concept="3cpWs8" id="6d6PW3pZHSw" role="3cqZAp">
            <node concept="3cpWsn" id="6d6PW3pZHSz" role="3cpWs9">
              <property role="TrG5h" value="states" />
              <node concept="_YKpA" id="6d6PW3pZHSs" role="1tU5fm">
                <node concept="3Tqbb2" id="6d6PW3pZHY4" role="_ZDj9">
                  <ref role="ehGHo" to="ge5j:6LAVG$wQHxa" resolve="IState" />
                </node>
              </node>
              <node concept="2ShNRf" id="6d6PW3pZI1o" role="33vP2m">
                <node concept="Tc6Ow" id="6d6PW3pZI1k" role="2ShVmc">
                  <node concept="3Tqbb2" id="6d6PW3pZI1l" role="HW$YZ">
                    <ref role="ehGHo" to="ge5j:6LAVG$wQHxa" resolve="IState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6d6PW3pZL2V" role="3cqZAp">
            <node concept="2OqwBi" id="6d6PW3pZOc8" role="3clFbG">
              <node concept="2OqwBi" id="6d6PW3pZM09" role="2Oq$k0">
                <node concept="1PxgMI" id="6d6PW3pZLPg" role="2Oq$k0">
                  <node concept="chp4Y" id="6d6PW3pZLQB" role="3oSUPX">
                    <ref role="cht4Q" to="ge5j:62oRKDPzNr3" resolve="App" />
                  </node>
                  <node concept="2OqwBi" id="6d6PW3pZLxM" role="1m5AlR">
                    <node concept="2OqwBi" id="6d6PW3pZLeJ" role="2Oq$k0">
                      <node concept="EsrRn" id="6d6PW3pZL2U" role="2Oq$k0" />
                      <node concept="1mfA1w" id="6d6PW3pZLqn" role="2OqNvi" />
                    </node>
                    <node concept="1mfA1w" id="6d6PW3pZLJ2" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="6d6PW3pZMi_" role="2OqNvi">
                  <ref role="3TtcxE" to="ge5j:7W0bUzHUPA9" resolve="tasks" />
                </node>
              </node>
              <node concept="2es0OD" id="6d6PW3pZSK8" role="2OqNvi">
                <node concept="1bVj0M" id="6d6PW3pZSKa" role="23t8la">
                  <node concept="3clFbS" id="6d6PW3pZSKb" role="1bW5cS">
                    <node concept="3clFbF" id="6d6PW3pZSZ0" role="3cqZAp">
                      <node concept="2OqwBi" id="6d6PW3pZUrT" role="3clFbG">
                        <node concept="37vLTw" id="6d6PW3pZSYZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6d6PW3pZHSz" resolve="states" />
                        </node>
                        <node concept="X8dFx" id="6d6PW3pZX_E" role="2OqNvi">
                          <node concept="2OqwBi" id="6d6PW3pZYvQ" role="25WWJ7">
                            <node concept="37vLTw" id="6d6PW3pZXMu" role="2Oq$k0">
                              <ref role="3cqZAo" node="6d6PW3pZSKc" resolve="task" />
                            </node>
                            <node concept="3Tsc0h" id="6d6PW3pZZCB" role="2OqNvi">
                              <ref role="3TtcxE" to="ge5j:7W0bUzHUPA4" resolve="states" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6d6PW3pZSKc" role="1bW2Oz">
                    <property role="TrG5h" value="task" />
                    <node concept="2jxLKc" id="6d6PW3pZSKd" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6d6PW3q07oH" role="3cqZAp">
            <node concept="1Wc70l" id="3phm7rXc_FJ" role="3clFbG">
              <node concept="2dkUwp" id="6d6PW3q0llB" role="3uHU7B">
                <node concept="2OqwBi" id="6d6PW3q0iQO" role="3uHU7B">
                  <node concept="2OqwBi" id="6d6PW3q099z" role="2Oq$k0">
                    <node concept="37vLTw" id="6d6PW3q07oF" role="2Oq$k0">
                      <ref role="3cqZAo" node="6d6PW3pZHSz" resolve="states" />
                    </node>
                    <node concept="3zZkjj" id="6d6PW3q0c5n" role="2OqNvi">
                      <node concept="1bVj0M" id="6d6PW3q0c5p" role="23t8la">
                        <node concept="3clFbS" id="6d6PW3q0c5q" role="1bW5cS">
                          <node concept="3clFbF" id="6d6PW3q0dxe" role="3cqZAp">
                            <node concept="17R0WA" id="6d6PW3q0gWa" role="3clFbG">
                              <node concept="1Wqviy" id="6d6PW3q0hFU" role="3uHU7w" />
                              <node concept="2OqwBi" id="6d6PW3q0e8n" role="3uHU7B">
                                <node concept="37vLTw" id="6d6PW3q0dxd" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6d6PW3q0c5r" resolve="state" />
                                </node>
                                <node concept="3TrcHB" id="6d6PW3q0f69" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6d6PW3q0c5r" role="1bW2Oz">
                          <property role="TrG5h" value="state" />
                          <node concept="2jxLKc" id="6d6PW3q0c5s" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="6d6PW3q0k2f" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="6d6PW3q0lWW" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3fqX7Q" id="3phm7rXcAyC" role="3uHU7w">
                <node concept="2OqwBi" id="3phm7rXcAyD" role="3fr31v">
                  <node concept="1Wqviy" id="3phm7rXcAyE" role="2Oq$k0" />
                  <node concept="liA8E" id="3phm7rXcAyF" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="3phm7rXcAyG" role="37wK5m">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="7Mto9RJ3I4j" role="1MtirG">
      <node concept="1dDu$B" id="7Mto9RJ3I4p" role="3EP$qY">
        <ref role="1dDu$A" to="ge5j:6LAVG$wQHxa" resolve="IState" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="508e52RJoWI">
    <ref role="1M2myG" to="ge5j:5iaO0WrUz9o" resolve="LCD" />
    <node concept="EnEH3" id="508e52RJpPF" role="1MhHOB">
      <ref role="EomxK" to="ge5j:6qpGXj2UsJ1" resolve="bus" />
      <node concept="QB0g5" id="508e52RJpR7" role="QCWH9">
        <node concept="3clFbS" id="508e52RJpR8" role="2VODD2">
          <node concept="3clFbF" id="508e52RJpWy" role="3cqZAp">
            <node concept="1Wc70l" id="508e52RJrdD" role="3clFbG">
              <node concept="2dkUwp" id="508e52RJs5n" role="3uHU7w">
                <node concept="3cmrfG" id="508e52RJsmJ" role="3uHU7w">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="1Wqviy" id="508e52RJrnC" role="3uHU7B" />
              </node>
              <node concept="2d3UOw" id="508e52RJr8p" role="3uHU7B">
                <node concept="1Wqviy" id="508e52RJpWx" role="3uHU7B" />
                <node concept="3cmrfG" id="508e52RJr91" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="508e52RKHuy" role="1MhHOB">
      <ref role="EomxK" to="ge5j:508e52RKHj9" resolve="rows" />
      <node concept="QB0g5" id="508e52RKHwQ" role="QCWH9">
        <node concept="3clFbS" id="508e52RKHwR" role="2VODD2">
          <node concept="3clFbF" id="508e52RKHxV" role="3cqZAp">
            <node concept="2d3UOw" id="508e52RKJdP" role="3clFbG">
              <node concept="3cmrfG" id="508e52RKJes" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1Wqviy" id="508e52RKHxU" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="508e52RKJmz" role="1MhHOB">
      <ref role="EomxK" to="ge5j:508e52RKHjc" resolve="columns" />
      <node concept="QB0g5" id="508e52RKJnE" role="QCWH9">
        <node concept="3clFbS" id="508e52RKJnF" role="2VODD2">
          <node concept="3clFbF" id="508e52RKJoJ" role="3cqZAp">
            <node concept="2d3UOw" id="508e52RKL4D" role="3clFbG">
              <node concept="3cmrfG" id="508e52RKL5d" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1Wqviy" id="508e52RKJoI" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7Mto9RJ2ZkI">
    <ref role="1M2myG" to="ge5j:508e52RTY3y" resolve="ConditionAnalog" />
    <node concept="EnEH3" id="7Mto9RJ2ZkJ" role="1MhHOB">
      <ref role="EomxK" to="ge5j:508e52RTZfk" resolve="comparator" />
      <node concept="QB0g5" id="7Mto9RJ2Zmg" role="QCWH9">
        <node concept="3clFbS" id="7Mto9RJ2Zmh" role="2VODD2">
          <node concept="3clFbF" id="7Mto9RJ2Zr1" role="3cqZAp">
            <node concept="22lmx$" id="7Mto9RJ349W" role="3clFbG">
              <node concept="2OqwBi" id="7Mto9RJ3jhH" role="3uHU7w">
                <node concept="1Wqviy" id="7Mto9RJ34dT" role="2Oq$k0" />
                <node concept="liA8E" id="7Mto9RJ3jUD" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="Xl_RD" id="7Mto9RJ3kix" role="37wK5m">
                    <property role="Xl_RC" value="!=" />
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="7Mto9RJ33P1" role="3uHU7B">
                <node concept="22lmx$" id="7Mto9RJ32wx" role="3uHU7B">
                  <node concept="22lmx$" id="7Mto9RJ31zN" role="3uHU7B">
                    <node concept="22lmx$" id="7Mto9RJ30qw" role="3uHU7B">
                      <node concept="2OqwBi" id="7Mto9RJ39gK" role="3uHU7B">
                        <node concept="1Wqviy" id="7Mto9RJ2Zr0" role="2Oq$k0" />
                        <node concept="liA8E" id="7Mto9RJ3a4T" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="Xl_RD" id="7Mto9RJ3ar2" role="37wK5m">
                            <property role="Xl_RC" value="&lt;=" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7Mto9RJ3eu6" role="3uHU7w">
                        <node concept="1Wqviy" id="7Mto9RJ30Gg" role="2Oq$k0" />
                        <node concept="liA8E" id="7Mto9RJ3f7n" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                          <node concept="Xl_RD" id="7Mto9RJ3fur" role="37wK5m">
                            <property role="Xl_RC" value="==" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Mto9RJ3ggK" role="3uHU7w">
                      <node concept="1Wqviy" id="7Mto9RJ31_M" role="2Oq$k0" />
                      <node concept="liA8E" id="7Mto9RJ3gCC" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="Xl_RD" id="7Mto9RJ3gOa" role="37wK5m">
                          <property role="Xl_RC" value="&gt;=" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Mto9RJ3hka" role="3uHU7w">
                    <node concept="1Wqviy" id="7Mto9RJ32_3" role="2Oq$k0" />
                    <node concept="liA8E" id="7Mto9RJ3huu" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                      <node concept="Xl_RD" id="7Mto9RJ3hyf" role="37wK5m">
                        <property role="Xl_RC" value="&lt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7Mto9RJ3iyO" role="3uHU7w">
                  <node concept="1Wqviy" id="7Mto9RJ33Sk" role="2Oq$k0" />
                  <node concept="liA8E" id="7Mto9RJ3iPy" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                    <node concept="Xl_RD" id="7Mto9RJ3iTt" role="37wK5m">
                      <property role="Xl_RC" value="&gt;" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7Mto9RJ3B7v">
    <ref role="1M2myG" to="ge5j:O0bPWK9L_$" resolve="ActionLCDAnalogReaderText" />
  </node>
  <node concept="1M2fIO" id="7Mto9RJ3F15">
    <ref role="1M2myG" to="ge5j:O0bPWK9L_P" resolve="IBrick" />
    <node concept="EnEH3" id="6d6PW3q0Lbw" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="6d6PW3q0Ld0" role="QCWH9">
        <node concept="3clFbS" id="6d6PW3q0Ld1" role="2VODD2">
          <node concept="3clFbF" id="6d6PW3q0LhJ" role="3cqZAp">
            <node concept="1Wc70l" id="3phm7rXcoMn" role="3clFbG">
              <node concept="2dkUwp" id="6d6PW3q0Vmi" role="3uHU7B">
                <node concept="2OqwBi" id="6d6PW3q0T_m" role="3uHU7B">
                  <node concept="2OqwBi" id="6d6PW3q0Ob5" role="2Oq$k0">
                    <node concept="2OqwBi" id="6d6PW3q0M2y" role="2Oq$k0">
                      <node concept="1PxgMI" id="6d6PW3q0LOW" role="2Oq$k0">
                        <node concept="chp4Y" id="6d6PW3q0LPe" role="3oSUPX">
                          <ref role="cht4Q" to="ge5j:62oRKDPzNr3" resolve="App" />
                        </node>
                        <node concept="2OqwBi" id="6d6PW3q0Lvh" role="1m5AlR">
                          <node concept="EsrRn" id="6d6PW3q0LhI" role="2Oq$k0" />
                          <node concept="1mfA1w" id="6d6PW3q0LEo" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="6d6PW3q0MuG" role="2OqNvi">
                        <ref role="3TtcxE" to="ge5j:1QS_xBSr5UP" resolve="bricks" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="6d6PW3q0RlE" role="2OqNvi">
                      <node concept="1bVj0M" id="6d6PW3q0RlG" role="23t8la">
                        <node concept="3clFbS" id="6d6PW3q0RlH" role="1bW5cS">
                          <node concept="3clFbF" id="6d6PW3q0RyT" role="3cqZAp">
                            <node concept="17R0WA" id="6d6PW3q0Tf3" role="3clFbG">
                              <node concept="1Wqviy" id="6d6PW3q0Tmo" role="3uHU7w" />
                              <node concept="2OqwBi" id="6d6PW3q0RSH" role="3uHU7B">
                                <node concept="37vLTw" id="6d6PW3q0RyS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6d6PW3q0RlI" resolve="brick" />
                                </node>
                                <node concept="3TrcHB" id="6d6PW3q0SjH" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6d6PW3q0RlI" role="1bW2Oz">
                          <property role="TrG5h" value="brick" />
                          <node concept="2jxLKc" id="6d6PW3q0RlJ" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="6d6PW3q0UjG" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="6d6PW3q0VBK" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
              <node concept="3fqX7Q" id="3phm7rXcp9g" role="3uHU7w">
                <node concept="2OqwBi" id="3phm7rXcp9h" role="3fr31v">
                  <node concept="1Wqviy" id="3phm7rXcp9i" role="2Oq$k0" />
                  <node concept="liA8E" id="3phm7rXcp9j" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="3phm7rXcp9k" role="37wK5m">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EP7_v" id="7Mto9RJ3F16" role="1MtirG">
      <node concept="1dDu$B" id="7Mto9RJ3F1c" role="3EP$qY">
        <ref role="1dDu$A" to="ge5j:O0bPWK9L_P" resolve="IBrick" />
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7Mto9RJ3MrZ">
    <ref role="1M2myG" to="ge5j:508e52RQ6xK" resolve="ActionLCDSimpleText" />
    <node concept="EnEH3" id="7Mto9RJ3Ms0" role="1MhHOB">
      <ref role="EomxK" to="ge5j:508e52RQ6xN" resolve="text" />
      <node concept="QB0g5" id="7Mto9RJ3MsM" role="QCWH9">
        <node concept="3clFbS" id="7Mto9RJ3MsN" role="2VODD2">
          <node concept="3clFbF" id="7Mto9RJ3Mxz" role="3cqZAp">
            <node concept="2dkUwp" id="7Mto9RJ3P05" role="3clFbG">
              <node concept="2OqwBi" id="7Mto9RJ3MW4" role="3uHU7B">
                <node concept="1Wqviy" id="7Mto9RJ3Mxy" role="2Oq$k0" />
                <node concept="liA8E" id="7Mto9RJ3Nr5" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
              <node concept="2OqwBi" id="7Mto9RJ3Qc4" role="3uHU7w">
                <node concept="2OqwBi" id="7Mto9RJ3Pvi" role="2Oq$k0">
                  <node concept="EsrRn" id="7Mto9RJ3P1j" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7Mto9RJ3PGs" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                  </node>
                </node>
                <node concept="3TrcHB" id="7Mto9RJ3QDb" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RKHjc" resolve="columns" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6LAVG$wVsPG">
    <ref role="1M2myG" to="ge5j:6LAVG$wRSgK" resolve="StateError" />
    <node concept="EnEH3" id="6LAVG$wVsPH" role="1MhHOB">
      <ref role="EomxK" to="ge5j:6LAVG$wRSgN" resolve="code" />
      <node concept="QB0g5" id="6LAVG$wVsQu" role="QCWH9">
        <node concept="3clFbS" id="6LAVG$wVsQv" role="2VODD2">
          <node concept="3clFbF" id="6LAVG$wVsVd" role="3cqZAp">
            <node concept="3eOSWO" id="6LAVG$wVuEJ" role="3clFbG">
              <node concept="1Wqviy" id="6LAVG$wVsVc" role="3uHU7B" />
              <node concept="3cmrfG" id="6LAVG$wVuSG" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2JnYSShP1Fx">
    <ref role="1M2myG" to="ge5j:2JnYSShP1DU" resolve="TransitionTime" />
    <node concept="EnEH3" id="2JnYSShP1Fy" role="1MhHOB">
      <ref role="EomxK" to="ge5j:2JnYSShP1DX" resolve="timeBeforeTransition" />
      <node concept="QB0g5" id="2JnYSShP1Gj" role="QCWH9">
        <node concept="3clFbS" id="2JnYSShP1Gk" role="2VODD2">
          <node concept="3clFbF" id="2JnYSShP1L2" role="3cqZAp">
            <node concept="3eOSWO" id="2JnYSShP3BO" role="3clFbG">
              <node concept="1Wqviy" id="2JnYSShP1L1" role="3uHU7B" />
              <node concept="3cmrfG" id="2JnYSShP3tz" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2JnYSShSivk">
    <ref role="1M2myG" to="ge5j:508e52RTjbA" resolve="ITransition" />
  </node>
  <node concept="1M2fIO" id="62XDBvzhszD">
    <ref role="1M2myG" to="ge5j:7W0bUzHUPA1" resolve="Task" />
    <node concept="EnEH3" id="62XDBvzhszE" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="62XDBvzhs$r" role="QCWH9">
        <node concept="3clFbS" id="62XDBvzhs$s" role="2VODD2">
          <node concept="3clFbF" id="62XDBvzhsDT" role="3cqZAp">
            <node concept="1Wc70l" id="3phm7rXcki8" role="3clFbG">
              <node concept="3fqX7Q" id="3phm7rXcnsb" role="3uHU7w">
                <node concept="2OqwBi" id="3phm7rXcnsd" role="3fr31v">
                  <node concept="1Wqviy" id="3phm7rXcnse" role="2Oq$k0" />
                  <node concept="liA8E" id="3phm7rXcnsf" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                    <node concept="Xl_RD" id="3phm7rXcnsg" role="37wK5m">
                      <property role="Xl_RC" value=" " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2dkUwp" id="62XDBvzhC3o" role="3uHU7B">
                <node concept="2OqwBi" id="62XDBvzhA4V" role="3uHU7B">
                  <node concept="2OqwBi" id="62XDBvzhwet" role="2Oq$k0">
                    <node concept="2OqwBi" id="62XDBvzhtAx" role="2Oq$k0">
                      <node concept="1PxgMI" id="62XDBvzhtn2" role="2Oq$k0">
                        <node concept="chp4Y" id="62XDBvzhto0" role="3oSUPX">
                          <ref role="cht4Q" to="ge5j:62oRKDPzNr3" resolve="App" />
                        </node>
                        <node concept="2OqwBi" id="62XDBvzhsSk" role="1m5AlR">
                          <node concept="EsrRn" id="62XDBvzhsDS" role="2Oq$k0" />
                          <node concept="1mfA1w" id="62XDBvzhtav" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="62XDBvzhtYu" role="2OqNvi">
                        <ref role="3TtcxE" to="ge5j:7W0bUzHUPA9" resolve="tasks" />
                      </node>
                    </node>
                    <node concept="3zZkjj" id="62XDBvzhzPq" role="2OqNvi">
                      <node concept="1bVj0M" id="62XDBvzhzPs" role="23t8la">
                        <node concept="3clFbS" id="62XDBvzhzPt" role="1bW5cS">
                          <node concept="3clFbF" id="62XDBvzh$cO" role="3cqZAp">
                            <node concept="17R0WA" id="62XDBvzh_Ig" role="3clFbG">
                              <node concept="1Wqviy" id="62XDBvzh_PL" role="3uHU7w" />
                              <node concept="2OqwBi" id="62XDBvzh$qQ" role="3uHU7B">
                                <node concept="37vLTw" id="62XDBvzh$cN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="62XDBvzhzPu" resolve="task" />
                                </node>
                                <node concept="3TrcHB" id="62XDBvzh$Oz" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="62XDBvzhzPu" role="1bW2Oz">
                          <property role="TrG5h" value="task" />
                          <node concept="2jxLKc" id="62XDBvzhzPv" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="62XDBvzhASv" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="62XDBvzhCgO" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="62XDBvzhCpj" role="1MhHOB">
      <ref role="EomxK" to="ge5j:3_0fBbHUuxz" resolve="period" />
      <node concept="QB0g5" id="62XDBvzhCyl" role="QCWH9">
        <node concept="3clFbS" id="62XDBvzhCym" role="2VODD2">
          <node concept="3clFbF" id="62XDBvzhCzs" role="3cqZAp">
            <node concept="3eOSWO" id="62XDBvzhC$7" role="3clFbG">
              <node concept="3cmrfG" id="62XDBvzhC$I" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="1Wqviy" id="62XDBvzhCzr" role="3uHU7B" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

