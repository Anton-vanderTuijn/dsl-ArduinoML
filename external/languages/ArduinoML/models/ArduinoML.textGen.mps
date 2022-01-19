<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b9f3b15-eb97-49cc-980b-f73cfc4e2e2c(ArduinoML.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="ge5j" ref="r:5bf5c70d-4c1e-4b5b-ac48-7f5374e997a2(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="62oRKDP_gx9">
    <ref role="WuzLi" to="ge5j:62oRKDPzNr5" resolve="ActuatorDigital" />
    <node concept="11bSqf" id="62oRKDP_gxa" role="11c4hB">
      <node concept="3clFbS" id="62oRKDP_gxb" role="2VODD2">
        <node concept="lc7rE" id="62oRKDP_gxs" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_o1h" role="lcghm">
            <property role="lacIc" value="int " />
          </node>
          <node concept="l9hG8" id="62oRKDP_iBo" role="lcghm">
            <node concept="2OqwBi" id="62oRKDP_iJE" role="lb14g">
              <node concept="117lpO" id="62oRKDP_iCc" role="2Oq$k0" />
              <node concept="3TrcHB" id="62oRKDP_iUf" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="62oRKDP_oS$" role="lcghm">
            <property role="lacIc" value=" = " />
          </node>
          <node concept="l9hG8" id="62oRKDP_iYd" role="lcghm">
            <node concept="2YIFZM" id="62oRKDP_j0s" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="62oRKDP_jnN" role="37wK5m">
                <node concept="117lpO" id="62oRKDP_j9E" role="2Oq$k0" />
                <node concept="3TrcHB" id="62oRKDP_jyk" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RMtqq" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="62oRKDP_oUD" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="62oRKDP_pM0">
    <ref role="WuzLi" to="ge5j:62oRKDPzNr3" resolve="App" />
    <node concept="29tfMY" id="62oRKDP_pM1" role="29tGrW">
      <node concept="3clFbS" id="62oRKDP_pM2" role="2VODD2">
        <node concept="3clFbF" id="62oRKDP_pQE" role="3cqZAp">
          <node concept="Xl_RD" id="62oRKDP_pQD" role="3clFbG">
            <property role="Xl_RC" value="main" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="62oRKDP_pRn" role="33IsuW">
      <node concept="3clFbS" id="62oRKDP_pRo" role="2VODD2">
        <node concept="3clFbF" id="62oRKDP_pW6" role="3cqZAp">
          <node concept="Xl_RD" id="62oRKDP_pW5" role="3clFbG">
            <property role="Xl_RC" value="c" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="62oRKDP_q37" role="11c4hB">
      <node concept="3clFbS" id="62oRKDP_q38" role="2VODD2">
        <node concept="lc7rE" id="62oRKDP_q3V" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_q4d" role="lcghm">
            <property role="lacIc" value="#include &lt;avr/io.h&gt;" />
          </node>
          <node concept="l8MVK" id="62oRKDP_q6c" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_q6u" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_q7N" role="lcghm">
            <property role="lacIc" value="#include &lt;util/delay.h&gt;" />
          </node>
          <node concept="l8MVK" id="62oRKDP_q92" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_q9y" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_q9Q" role="lcghm">
            <property role="lacIc" value="#include &lt;Arduino.h&gt;" />
          </node>
          <node concept="l8MVK" id="62oRKDP_qb$" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_qc4" role="3cqZAp">
          <node concept="l8MVK" id="62oRKDP_qco" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_qe6" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_qeq" role="lcghm">
            <property role="lacIc" value="/** Generating code for application" />
          </node>
          <node concept="l9hG8" id="62oRKDP_qfr" role="lcghm">
            <node concept="2OqwBi" id="62oRKDP_qon" role="lb14g">
              <node concept="117lpO" id="62oRKDP_qgf" role="2Oq$k0" />
              <node concept="3TrcHB" id="62oRKDP_q$i" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="62oRKDP_qBO" role="lcghm">
            <property role="lacIc" value=" **/" />
          </node>
          <node concept="l8MVK" id="62oRKDP_qD_" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_qEP" role="3cqZAp">
          <node concept="l8MVK" id="62oRKDP_qFx" role="lcghm" />
        </node>
        <node concept="3clFbH" id="508e52RS3HK" role="3cqZAp" />
        <node concept="lc7rE" id="62oRKDP_qJ6" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_qJM" role="lcghm">
            <property role="lacIc" value="// Declaring states function headers" />
          </node>
          <node concept="l8MVK" id="62oRKDP_qLJ" role="lcghm" />
        </node>
        <node concept="3clFbF" id="62oRKDP_qPl" role="3cqZAp">
          <node concept="2OqwBi" id="62oRKDP_sGT" role="3clFbG">
            <node concept="2OqwBi" id="62oRKDP_qWp" role="2Oq$k0">
              <node concept="117lpO" id="62oRKDP_qPk" role="2Oq$k0" />
              <node concept="3Tsc0h" id="62oRKDP_riC" role="2OqNvi">
                <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
              </node>
            </node>
            <node concept="2es0OD" id="62oRKDP_wGe" role="2OqNvi">
              <node concept="1bVj0M" id="62oRKDP_wGg" role="23t8la">
                <node concept="3clFbS" id="62oRKDP_wGh" role="1bW5cS">
                  <node concept="lc7rE" id="62oRKDP_wK0" role="3cqZAp">
                    <node concept="la8eA" id="62oRKDP_wMn" role="lcghm">
                      <property role="lacIc" value="void state_" />
                    </node>
                    <node concept="l9hG8" id="62oRKDP_x3X" role="lcghm">
                      <node concept="2OqwBi" id="62oRKDP_xfF" role="lb14g">
                        <node concept="37vLTw" id="62oRKDP_x6Q" role="2Oq$k0">
                          <ref role="3cqZAo" node="62oRKDP_wGi" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="62oRKDP_xym" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="la8eA" id="62oRKDP_xFh" role="lcghm">
                      <property role="lacIc" value="();" />
                    </node>
                    <node concept="l8MVK" id="62oRKDP_y80" role="lcghm" />
                  </node>
                </node>
                <node concept="Rh6nW" id="62oRKDP_wGi" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="62oRKDP_wGj" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="62oRKDP_yfe" role="3cqZAp">
          <node concept="l8MVK" id="62oRKDP_yim" role="lcghm" />
        </node>
        <node concept="3clFbH" id="508e52RS3ta" role="3cqZAp" />
        <node concept="lc7rE" id="62oRKDP_ylW" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_yp4" role="lcghm">
            <property role="lacIc" value="// Declaring available actuators " />
          </node>
          <node concept="l8MVK" id="62oRKDP_yrv" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_yzy" role="3cqZAp">
          <node concept="l9S2W" id="62oRKDP_yAE" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="\n" />
            <node concept="2OqwBi" id="62oRKDP_yHI" role="lbANJ">
              <node concept="117lpO" id="62oRKDP_yAY" role="2Oq$k0" />
              <node concept="3Tsc0h" id="62oRKDP_z7b" role="2OqNvi">
                <ref role="3TtcxE" to="ge5j:62oRKDPzNrq" resolve="actuators" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="508e52RS2qV" role="3cqZAp" />
        <node concept="3clFbJ" id="508e52RRyO$" role="3cqZAp">
          <node concept="3clFbS" id="508e52RRyOA" role="3clFbx">
            <node concept="lc7rE" id="508e52RRJnu" role="3cqZAp">
              <node concept="l8MVK" id="508e52RRJo4" role="lcghm" />
              <node concept="l8MVK" id="508e52RRJoE" role="lcghm" />
            </node>
            <node concept="lc7rE" id="508e52RRExO" role="3cqZAp">
              <node concept="la8eA" id="508e52RREya" role="lcghm">
                <property role="lacIc" value="// Declaring lcd screens" />
              </node>
              <node concept="l8MVK" id="508e52RREzG" role="lcghm" />
            </node>
            <node concept="lc7rE" id="508e52RRE$i" role="3cqZAp">
              <node concept="l9S2W" id="508e52RRE$F" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value="\n" />
                <node concept="2OqwBi" id="508e52RREFL" role="lbANJ">
                  <node concept="117lpO" id="508e52RRE_1" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="508e52RRF0o" role="2OqNvi">
                    <ref role="3TtcxE" to="ge5j:508e52RKbsH" resolve="lcd_screens" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="508e52RREqY" role="3clFbw">
            <node concept="3cmrfG" id="508e52RREs_" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="508e52RR_9D" role="3uHU7B">
              <node concept="2OqwBi" id="508e52RRzcm" role="2Oq$k0">
                <node concept="117lpO" id="508e52RRz3E" role="2Oq$k0" />
                <node concept="3Tsc0h" id="508e52RRzwY" role="2OqNvi">
                  <ref role="3TtcxE" to="ge5j:508e52RKbsH" resolve="lcd_screens" />
                </node>
              </node>
              <node concept="34oBXx" id="508e52RRCHn" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="508e52RRy_E" role="3cqZAp" />
        <node concept="lc7rE" id="508e52RSi68" role="3cqZAp">
          <node concept="l8MVK" id="508e52RSimO" role="lcghm" />
          <node concept="l8MVK" id="508e52RSine" role="lcghm" />
        </node>
        <node concept="lc7rE" id="508e52RRWwb" role="3cqZAp">
          <node concept="la8eA" id="508e52RRWLn" role="lcghm">
            <property role="lacIc" value="// Declaring states" />
          </node>
          <node concept="l8MVK" id="508e52RRWMq" role="lcghm" />
        </node>
        <node concept="lc7rE" id="508e52RRXNA" role="3cqZAp">
          <node concept="l9S2W" id="508e52RRY4l" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="\n" />
            <node concept="2OqwBi" id="508e52RRYbr" role="lbANJ">
              <node concept="117lpO" id="508e52RRY4F" role="2Oq$k0" />
              <node concept="3Tsc0h" id="508e52RRYzk" role="2OqNvi">
                <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="508e52RRWfA" role="3cqZAp" />
        <node concept="lc7rE" id="62oRKDP_Fc9" role="3cqZAp">
          <node concept="l8MVK" id="62oRKDP_Ffx" role="lcghm" />
          <node concept="l8MVK" id="62oRKDP_Fg4" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_Fon" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_FrJ" role="lcghm">
            <property role="lacIc" value="void setup()" />
          </node>
          <node concept="l8MVK" id="62oRKDP_Fte" role="lcghm" />
          <node concept="la8eA" id="62oRKDP_FtL" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l8MVK" id="62oRKDP_Fuz" role="lcghm" />
        </node>
        <node concept="3izx1p" id="62oRKDP_Fy7" role="3cqZAp">
          <node concept="3clFbS" id="62oRKDP_Fy9" role="3izTki">
            <node concept="3clFbF" id="62oRKDP_FDI" role="3cqZAp">
              <node concept="2OqwBi" id="62oRKDP_HwQ" role="3clFbG">
                <node concept="2OqwBi" id="508e52RJCnz" role="2Oq$k0">
                  <node concept="117lpO" id="62oRKDP_FDH" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="508e52RJCKU" role="2OqNvi">
                    <ref role="3TtcxE" to="ge5j:62oRKDPzNrq" resolve="actuators" />
                  </node>
                </node>
                <node concept="2es0OD" id="62oRKDP_Lw9" role="2OqNvi">
                  <node concept="1bVj0M" id="62oRKDP_Lwb" role="23t8la">
                    <node concept="3clFbS" id="62oRKDP_Lwc" role="1bW5cS">
                      <node concept="1bpajm" id="62oRKDP_LG4" role="3cqZAp" />
                      <node concept="lc7rE" id="62oRKDP_LNu" role="3cqZAp">
                        <node concept="la8eA" id="62oRKDP_LPP" role="lcghm">
                          <property role="lacIc" value="pinMode(" />
                        </node>
                        <node concept="l9hG8" id="62oRKDP_M5g" role="lcghm">
                          <node concept="2OqwBi" id="62oRKDP_Mjb" role="lb14g">
                            <node concept="37vLTw" id="62oRKDP_Mam" role="2Oq$k0">
                              <ref role="3cqZAo" node="62oRKDP_Lwd" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="62oRKDP_M_O" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="la8eA" id="62oRKDP_MHh" role="lcghm">
                          <property role="lacIc" value=", " />
                        </node>
                        <node concept="la8eA" id="62oRKDP_MPn" role="lcghm">
                          <property role="lacIc" value="OUTPUT);" />
                        </node>
                        <node concept="l8MVK" id="62oRKDP_N08" role="lcghm" />
                      </node>
                    </node>
                    <node concept="Rh6nW" id="62oRKDP_Lwd" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="62oRKDP_Lwe" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="508e52RSSLH" role="3cqZAp" />
            <node concept="3clFbJ" id="508e52RSEPT" role="3cqZAp">
              <node concept="3clFbS" id="508e52RSEPV" role="3clFbx">
                <node concept="2Gpval" id="508e52RSMQp" role="3cqZAp">
                  <node concept="2GrKxI" id="508e52RSMQr" role="2Gsz3X">
                    <property role="TrG5h" value="lcd" />
                  </node>
                  <node concept="2OqwBi" id="508e52RSN0f" role="2GsD0m">
                    <node concept="117lpO" id="508e52RSMRn" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="508e52RSNkR" role="2OqNvi">
                      <ref role="3TtcxE" to="ge5j:508e52RKbsH" resolve="lcd_screens" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="508e52RSMQv" role="2LFqv$">
                    <node concept="1bpajm" id="508e52RSNlC" role="3cqZAp" />
                    <node concept="lc7rE" id="508e52RSNma" role="3cqZAp">
                      <node concept="l9hG8" id="508e52RSNmx" role="lcghm">
                        <node concept="2OqwBi" id="508e52RSNu3" role="lb14g">
                          <node concept="2GrUjf" id="508e52RSNnn" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="508e52RSMQr" resolve="lcd" />
                          </node>
                          <node concept="3TrcHB" id="508e52RSNLx" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="la8eA" id="508e52RSNP_" role="lcghm">
                        <property role="lacIc" value=".begin(" />
                      </node>
                      <node concept="l9hG8" id="508e52RSNQL" role="lcghm">
                        <node concept="2YIFZM" id="508e52RSOtC" role="lb14g">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                          <node concept="2OqwBi" id="508e52RSOJZ" role="37wK5m">
                            <node concept="2GrUjf" id="508e52RSOwF" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="508e52RSMQr" resolve="lcd" />
                            </node>
                            <node concept="3TrcHB" id="508e52RSPeN" role="2OqNvi">
                              <ref role="3TsBF5" to="ge5j:508e52RKHjc" resolve="columns" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="la8eA" id="508e52RSPwY" role="lcghm">
                        <property role="lacIc" value=", " />
                      </node>
                      <node concept="l9hG8" id="508e52RSP_D" role="lcghm">
                        <node concept="2YIFZM" id="508e52RSQNz" role="lb14g">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                          <node concept="2OqwBi" id="508e52RSR5v" role="37wK5m">
                            <node concept="2GrUjf" id="508e52RSQR0" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="508e52RSMQr" resolve="lcd" />
                            </node>
                            <node concept="3TrcHB" id="508e52RSRzR" role="2OqNvi">
                              <ref role="3TsBF5" to="ge5j:508e52RKHj9" resolve="rows" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="la8eA" id="508e52RSRSQ" role="lcghm">
                        <property role="lacIc" value=");" />
                      </node>
                      <node concept="l8MVK" id="508e52RSRZO" role="lcghm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="508e52RSMHc" role="3clFbw">
                <node concept="3cmrfG" id="508e52RSMIN" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="508e52RSHJD" role="3uHU7B">
                  <node concept="2OqwBi" id="508e52RSFOt" role="2Oq$k0">
                    <node concept="117lpO" id="508e52RSFFL" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="508e52RSG95" role="2OqNvi">
                      <ref role="3TtcxE" to="ge5j:508e52RKbsH" resolve="lcd_screens" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="508e52RSKZ_" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="62oRKDP_Nc0" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_No_" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="62oRKDP_NpP" role="lcghm" />
          <node concept="l8MVK" id="62oRKDP_Nqc" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_Nwc" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_NA0" role="lcghm">
            <property role="lacIc" value="int main(void)" />
          </node>
          <node concept="l8MVK" id="62oRKDP_NBv" role="lcghm" />
          <node concept="la8eA" id="62oRKDP_NC2" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l8MVK" id="62oRKDP_NCO" role="lcghm" />
        </node>
        <node concept="3izx1p" id="62oRKDP_NP7" role="3cqZAp">
          <node concept="3clFbS" id="62oRKDP_NP9" role="3izTki">
            <node concept="1bpajm" id="62oRKDP_O1b" role="3cqZAp" />
            <node concept="lc7rE" id="62oRKDP_O1E" role="3cqZAp">
              <node concept="la8eA" id="62oRKDP_O1Y" role="lcghm">
                <property role="lacIc" value="setup();" />
              </node>
              <node concept="l8MVK" id="62oRKDP_O3e" role="lcghm" />
            </node>
            <node concept="1bpajm" id="62oRKDP_O3I" role="3cqZAp" />
            <node concept="lc7rE" id="62oRKDP_O4e" role="3cqZAp">
              <node concept="la8eA" id="62oRKDP_O4y" role="lcghm">
                <property role="lacIc" value="state_" />
              </node>
              <node concept="l9hG8" id="62oRKDP_O5k" role="lcghm">
                <node concept="2OqwBi" id="62oRKDP_X88" role="lb14g">
                  <node concept="2OqwBi" id="62oRKDP_QPA" role="2Oq$k0">
                    <node concept="2OqwBi" id="62oRKDP_Oeg" role="2Oq$k0">
                      <node concept="117lpO" id="62oRKDP_O68" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="62oRKDP_O$Z" role="2OqNvi">
                        <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                      </node>
                    </node>
                    <node concept="1z4cxt" id="62oRKDP_W8E" role="2OqNvi">
                      <node concept="1bVj0M" id="62oRKDP_W8G" role="23t8la">
                        <node concept="3clFbS" id="62oRKDP_W8H" role="1bW5cS">
                          <node concept="3clFbF" id="62oRKDP_Wgz" role="3cqZAp">
                            <node concept="2OqwBi" id="62oRKDP_Wri" role="3clFbG">
                              <node concept="37vLTw" id="62oRKDP_Wgy" role="2Oq$k0">
                                <ref role="3cqZAo" node="62oRKDP_W8I" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="62oRKDP_WTw" role="2OqNvi">
                                <ref role="3TsBF5" to="ge5j:62oRKDP$6Yy" resolve="isInitial" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="62oRKDP_W8I" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="62oRKDP_W8J" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="62oRKDP_XHE" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="62oRKDP_XNt" role="lcghm">
                <property role="lacIc" value="();" />
              </node>
              <node concept="l8MVK" id="62oRKDP_XTX" role="lcghm" />
            </node>
            <node concept="1bpajm" id="62oRKDP_XZH" role="3cqZAp" />
            <node concept="lc7rE" id="62oRKDP_Y5t" role="3cqZAp">
              <node concept="la8eA" id="62oRKDP_YcE" role="lcghm">
                <property role="lacIc" value="return 0;" />
              </node>
              <node concept="l8MVK" id="62oRKDP_YdI" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="62oRKDP_Yoo" role="3cqZAp">
          <node concept="la8eA" id="62oRKDP_YwO" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="62oRKDPA9wM">
    <ref role="WuzLi" to="ge5j:62oRKDPzNri" resolve="State" />
    <node concept="11bSqf" id="62oRKDPA9wN" role="11c4hB">
      <node concept="3clFbS" id="62oRKDPA9wO" role="2VODD2">
        <node concept="lc7rE" id="62oRKDPA9x5" role="3cqZAp">
          <node concept="la8eA" id="62oRKDPA9xn" role="lcghm">
            <property role="lacIc" value="void state_" />
          </node>
          <node concept="l9hG8" id="62oRKDPA9yo" role="lcghm">
            <node concept="2OqwBi" id="62oRKDPA9EE" role="lb14g">
              <node concept="117lpO" id="62oRKDPA9zc" role="2Oq$k0" />
              <node concept="3TrcHB" id="62oRKDPA9Wi" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="62oRKDPA9ZB" role="lcghm">
            <property role="lacIc" value="()" />
          </node>
          <node concept="l8MVK" id="62oRKDPAaDh" role="lcghm" />
          <node concept="la8eA" id="62oRKDPAaGA" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l8MVK" id="62oRKDPAaI8" role="lcghm" />
        </node>
        <node concept="3izx1p" id="62oRKDPAaJo" role="3cqZAp">
          <node concept="3clFbS" id="62oRKDPAaJq" role="3izTki">
            <node concept="3clFbF" id="62oRKDPAaK2" role="3cqZAp">
              <node concept="2OqwBi" id="62oRKDPAceu" role="3clFbG">
                <node concept="2OqwBi" id="62oRKDPAaQe" role="2Oq$k0">
                  <node concept="117lpO" id="62oRKDPAaK1" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="62oRKDPAb7P" role="2OqNvi">
                    <ref role="3TtcxE" to="ge5j:62oRKDPzNrk" resolve="actions" />
                  </node>
                </node>
                <node concept="2es0OD" id="62oRKDPAfIN" role="2OqNvi">
                  <node concept="1bVj0M" id="62oRKDPAfIP" role="23t8la">
                    <node concept="3clFbS" id="62oRKDPAfIQ" role="1bW5cS">
                      <node concept="3clFbH" id="62oRKDPAfOv" role="3cqZAp" />
                      <node concept="1bpajm" id="62oRKDPAfS6" role="3cqZAp" />
                      <node concept="lc7rE" id="62oRKDPAfXU" role="3cqZAp">
                        <node concept="l9hG8" id="62oRKDPAg0b" role="lcghm">
                          <node concept="37vLTw" id="62oRKDPAg2W" role="lb14g">
                            <ref role="3cqZAo" node="62oRKDPAfIR" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="62oRKDPAfIR" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="62oRKDPAfIS" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="62oRKDPAggM" role="3cqZAp">
          <node concept="la8eA" id="62oRKDPAgjJ" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="62oRKDPAgkx" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RJoWp">
    <ref role="WuzLi" to="ge5j:5iaO0WrUz9o" resolve="ActuatorLCD" />
    <node concept="11bSqf" id="508e52RJoWq" role="11c4hB">
      <node concept="3clFbS" id="508e52RJoWr" role="2VODD2">
        <node concept="lc7rE" id="508e52RJvl9" role="3cqZAp">
          <node concept="la8eA" id="508e52RJvNs" role="lcghm">
            <property role="lacIc" value="LiquidCrystal " />
          </node>
          <node concept="l9hG8" id="508e52RSu7e" role="lcghm">
            <node concept="2OqwBi" id="508e52RSueK" role="lb14g">
              <node concept="117lpO" id="508e52RSu85" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RSuyD" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RSuA1" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3KaCP$" id="508e52RJwPn" role="3cqZAp">
          <node concept="2OqwBi" id="508e52RJwWT" role="3KbGdf">
            <node concept="117lpO" id="508e52RJwQg" role="2Oq$k0" />
            <node concept="3TrcHB" id="508e52RJxfS" role="2OqNvi">
              <ref role="3TsBF5" to="ge5j:5iaO0WrUz9u" resolve="bus" />
            </node>
          </node>
          <node concept="3KbdKl" id="508e52RJxiq" role="3KbHQx">
            <node concept="3cmrfG" id="508e52RJxiU" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3clFbS" id="508e52RJxJg" role="3Kbo56">
              <node concept="lc7rE" id="508e52RJxJL" role="3cqZAp">
                <node concept="la8eA" id="508e52RJxK7" role="lcghm">
                  <property role="lacIc" value="todo" />
                </node>
              </node>
              <node concept="3zACq4" id="508e52RJyhW" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="508e52RJyjE" role="3KbHQx">
            <node concept="3cmrfG" id="508e52RJykn" role="3Kbmr1">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3clFbS" id="508e52RJyn3" role="3Kbo56">
              <node concept="lc7rE" id="508e52RJynF" role="3cqZAp">
                <node concept="la8eA" id="508e52RJyo1" role="lcghm">
                  <property role="lacIc" value="10, 11, 12, 13, 14, 15, 16" />
                </node>
              </node>
              <node concept="3zACq4" id="508e52RJyoO" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="508e52RJyqa" role="3KbHQx">
            <node concept="3cmrfG" id="508e52RJyr4" role="3Kbmr1">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="3clFbS" id="508e52RJyrK" role="3Kbo56">
              <node concept="lc7rE" id="508e52RJysv" role="3cqZAp">
                <node concept="la8eA" id="508e52RJysP" role="lcghm">
                  <property role="lacIc" value="todo" />
                </node>
              </node>
              <node concept="3zACq4" id="508e52RJyu9" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="508e52RJwN6" role="3cqZAp">
          <node concept="la8eA" id="508e52RJwO0" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RPLfc">
    <ref role="WuzLi" to="ge5j:508e52RN2d3" resolve="ActionDigital" />
    <node concept="11bSqf" id="508e52RPLfd" role="11c4hB">
      <node concept="3clFbS" id="508e52RPLfe" role="2VODD2">
        <node concept="lc7rE" id="508e52RRcKS" role="3cqZAp">
          <node concept="la8eA" id="508e52RRcLc" role="lcghm">
            <property role="lacIc" value="digitalWrite(" />
          </node>
          <node concept="l9hG8" id="508e52RRcMv" role="lcghm">
            <node concept="2YIFZM" id="508e52RReq$" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RRflD" role="37wK5m">
                <node concept="2OqwBi" id="508e52RRf06" role="2Oq$k0">
                  <node concept="117lpO" id="508e52RRe$l" role="2Oq$k0" />
                  <node concept="3TrEf2" id="508e52RRfcv" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:508e52RN5HJ" resolve="target" />
                  </node>
                </node>
                <node concept="3TrcHB" id="508e52RRfKC" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RMtqq" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RRhnL" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="508e52RRhqY" role="lcghm">
            <node concept="2OqwBi" id="508e52RRhzG" role="lb14g">
              <node concept="117lpO" id="508e52RRht1" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RRhPp" role="2OqNvi">
                <ref role="3TsBF5" to="ge5j:508e52RN5HH" resolve="signal" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RRgD5" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="508e52RRhkM" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RPLiH">
    <ref role="WuzLi" to="ge5j:508e52RN5HL" resolve="ActionAnalog" />
    <node concept="11bSqf" id="508e52RPLiI" role="11c4hB">
      <node concept="3clFbS" id="508e52RPLiJ" role="2VODD2">
        <node concept="lc7rE" id="508e52RRb13" role="3cqZAp">
          <node concept="la8eA" id="508e52RRb1n" role="lcghm">
            <property role="lacIc" value="analogWrite(" />
          </node>
          <node concept="l9hG8" id="508e52RRhS0" role="lcghm">
            <node concept="2YIFZM" id="508e52RRj7m" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RRjDx" role="37wK5m">
                <node concept="2OqwBi" id="508e52RRjke" role="2Oq$k0">
                  <node concept="117lpO" id="508e52RRj9_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="508e52RRjwt" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:508e52RN5HO" resolve="target" />
                  </node>
                </node>
                <node concept="3TrcHB" id="508e52RRjQH" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RMtqq" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RRkGj" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="l9hG8" id="508e52RRkJs" role="lcghm">
            <node concept="2YIFZM" id="508e52RRln4" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RRl$m" role="37wK5m">
                <node concept="117lpO" id="508e52RRlpH" role="2Oq$k0" />
                <node concept="3TrcHB" id="508e52RRlRC" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RN5HM" resolve="signal" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RRmb_" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="508e52RRmhi" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RQsIU">
    <ref role="WuzLi" to="ge5j:508e52RMtqy" resolve="ActuatorAnalog" />
    <node concept="11bSqf" id="508e52RQsIV" role="11c4hB">
      <node concept="3clFbS" id="508e52RQsIW" role="2VODD2">
        <node concept="lc7rE" id="508e52RQNiX" role="3cqZAp">
          <node concept="la8eA" id="508e52RQNjk" role="lcghm">
            <property role="lacIc" value="int " />
          </node>
          <node concept="l9hG8" id="508e52RQNk9" role="lcghm">
            <node concept="2OqwBi" id="508e52RQNuA" role="lb14g">
              <node concept="117lpO" id="508e52RQNl0" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RQNON" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RQNSj" role="lcghm">
            <property role="lacIc" value=" = " />
          </node>
          <node concept="l9hG8" id="508e52RQNU2" role="lcghm">
            <node concept="2YIFZM" id="508e52RQOYh" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RQPnJ" role="37wK5m">
                <node concept="117lpO" id="508e52RQP7X" role="2Oq$k0" />
                <node concept="3TrcHB" id="508e52RQPGV" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RMtqq" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RQQ_u" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RR03n">
    <ref role="WuzLi" to="ge5j:508e52RQ6xK" resolve="ActionLCD" />
    <node concept="11bSqf" id="508e52RR03o" role="11c4hB">
      <node concept="3clFbS" id="508e52RR03p" role="2VODD2">
        <node concept="lc7rE" id="508e52RRb29" role="3cqZAp">
          <node concept="l9hG8" id="508e52RRb2t" role="lcghm">
            <node concept="2OqwBi" id="508e52RRbYC" role="lb14g">
              <node concept="2OqwBi" id="508e52RRbcf" role="2Oq$k0">
                <node concept="117lpO" id="508e52RRb3j" role="2Oq$k0" />
                <node concept="3TrEf2" id="508e52RRbN2" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:508e52RQ6xP" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="508e52RRckA" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RRco9" role="lcghm">
            <property role="lacIc" value=".print(&quot;" />
          </node>
          <node concept="l9hG8" id="508e52RRcr0" role="lcghm">
            <node concept="2OqwBi" id="508e52RRcyO" role="lb14g">
              <node concept="117lpO" id="508e52RRcsq" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RRcA8" role="2OqNvi">
                <ref role="3TsBF5" to="ge5j:508e52RQ6xN" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RRcC5" role="lcghm">
            <property role="lacIc" value="&quot;);" />
          </node>
          <node concept="l8MVK" id="508e52RRcJk" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RTjKj">
    <ref role="WuzLi" to="ge5j:508e52RTjJJ" resolve="ActionSleep" />
    <node concept="11bSqf" id="508e52RTjKk" role="11c4hB">
      <node concept="3clFbS" id="508e52RTjKl" role="2VODD2">
        <node concept="lc7rE" id="508e52RTjKC" role="3cqZAp">
          <node concept="la8eA" id="508e52RTjKW" role="lcghm">
            <property role="lacIc" value="delay(" />
          </node>
          <node concept="l9hG8" id="508e52RTjM3" role="lcghm">
            <node concept="2YIFZM" id="508e52RTkHu" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RTkUm" role="37wK5m">
                <node concept="117lpO" id="508e52RTkJH" role="2Oq$k0" />
                <node concept="3TrcHB" id="508e52RTlcy" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RTjJM" resolve="time_ms" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RTlZL" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="508e52RTm2w" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

