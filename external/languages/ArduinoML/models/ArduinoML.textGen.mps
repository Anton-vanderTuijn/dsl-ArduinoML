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
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
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
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
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
                  <ref role="3TsBF5" to="ge5j:O0bPWKaXTl" resolve="pin" />
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
        <node concept="3clFbH" id="508e52S0j6n" role="3cqZAp" />
        <node concept="3SKdUt" id="508e52S0aDv" role="3cqZAp">
          <node concept="1PaTwC" id="508e52S0aDw" role="1aUNEU">
            <node concept="3oM_SD" id="508e52S0aYh" role="1PaTwD">
              <property role="3oM_SC" value="INCLUDES" />
            </node>
            <node concept="3oM_SD" id="508e52S0aYr" role="1PaTwD">
              <property role="3oM_SC" value="------------------------------------------------------------------" />
            </node>
          </node>
        </node>
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
        <node concept="lc7rE" id="508e52RVq1y" role="3cqZAp">
          <node concept="la8eA" id="508e52RVq1S" role="lcghm">
            <property role="lacIc" value="#include &lt;LiquidCrystal.h&gt;" />
          </node>
          <node concept="l8MVK" id="508e52S2HTM" role="lcghm" />
        </node>
        <node concept="lc7rE" id="62oRKDP_qc4" role="3cqZAp">
          <node concept="l8MVK" id="62oRKDP_qco" role="lcghm" />
        </node>
        <node concept="3clFbH" id="508e52RVq3m" role="3cqZAp" />
        <node concept="3clFbH" id="508e52S0iLm" role="3cqZAp" />
        <node concept="3SKdUt" id="508e52S0c6v" role="3cqZAp">
          <node concept="1PaTwC" id="508e52S0c6w" role="1aUNEU">
            <node concept="3oM_SD" id="508e52S0crl" role="1PaTwD">
              <property role="3oM_SC" value="GENERAL" />
            </node>
            <node concept="3oM_SD" id="508e52S0crw" role="1PaTwD">
              <property role="3oM_SC" value="DEFINITIONS" />
            </node>
            <node concept="3oM_SD" id="508e52S0crJ" role="1PaTwD">
              <property role="3oM_SC" value="-------------------------------------------------------" />
            </node>
          </node>
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
        <node concept="lc7rE" id="O0bPWJSi2r" role="3cqZAp">
          <node concept="la8eA" id="O0bPWJSirC" role="lcghm">
            <property role="lacIc" value="enum STATE {" />
          </node>
        </node>
        <node concept="1Dw8fO" id="O0bPWJUEOz" role="3cqZAp">
          <node concept="3clFbS" id="O0bPWJUEO_" role="2LFqv$">
            <node concept="lc7rE" id="O0bPWJVYQs" role="3cqZAp">
              <node concept="l9hG8" id="O0bPWJVYSR" role="lcghm">
                <node concept="2OqwBi" id="O0bPWJW1Fe" role="lb14g">
                  <node concept="1y4W85" id="O0bPWJW1uN" role="2Oq$k0">
                    <node concept="37vLTw" id="O0bPWJW1$b" role="1y58nS">
                      <ref role="3cqZAo" node="O0bPWJUEOA" resolve="i" />
                    </node>
                    <node concept="2OqwBi" id="O0bPWJVZ1h" role="1y566C">
                      <node concept="117lpO" id="O0bPWJVYTH" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="O0bPWJVZen" role="2OqNvi">
                        <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="O0bPWJW200" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="O0bPWJUVIv" role="3cqZAp">
              <node concept="l9hG8" id="O0bPWJUVIP" role="lcghm">
                <node concept="3K4zz7" id="O0bPWJUVJF" role="lb14g">
                  <node concept="3eOVzh" id="O0bPWJUWuu" role="3K4Cdx">
                    <node concept="3cpWsd" id="O0bPWJV4FT" role="3uHU7w">
                      <node concept="3cmrfG" id="O0bPWJV4FX" role="3uHU7w">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2OqwBi" id="O0bPWJUZ8C" role="3uHU7B">
                        <node concept="2OqwBi" id="O0bPWJUWRA" role="2Oq$k0">
                          <node concept="117lpO" id="O0bPWJUWvx" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="O0bPWJUX4M" role="2OqNvi">
                            <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                          </node>
                        </node>
                        <node concept="34oBXx" id="O0bPWJV3At" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="O0bPWJUVKJ" role="3uHU7B">
                      <ref role="3cqZAo" node="O0bPWJUEOA" resolve="i" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="O0bPWJV4V2" role="3K4E3e">
                    <property role="Xl_RC" value=", " />
                  </node>
                  <node concept="Xl_RD" id="O0bPWJV4Zq" role="3K4GZi">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="O0bPWJUEOA" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="O0bPWJUHoV" role="1tU5fm" />
            <node concept="3cmrfG" id="O0bPWJUHpQ" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="O0bPWJUItu" role="1Dwp0S">
            <node concept="2OqwBi" id="O0bPWJUOH6" role="3uHU7w">
              <node concept="2OqwBi" id="O0bPWJUKnM" role="2Oq$k0">
                <node concept="117lpO" id="O0bPWJUJLU" role="2Oq$k0" />
                <node concept="3Tsc0h" id="O0bPWJUL5E" role="2OqNvi">
                  <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                </node>
              </node>
              <node concept="34oBXx" id="O0bPWJUSLO" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="O0bPWJUHqe" role="3uHU7B">
              <ref role="3cqZAo" node="O0bPWJUEOA" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="O0bPWJUUi_" role="1Dwrff">
            <node concept="37vLTw" id="O0bPWJUUiB" role="2$L3a6">
              <ref role="3cqZAo" node="O0bPWJUEOA" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="O0bPWJV7AJ" role="3cqZAp">
          <node concept="la8eA" id="O0bPWJV9df" role="lcghm">
            <property role="lacIc" value="};" />
          </node>
          <node concept="l8MVK" id="O0bPWJVb5H" role="lcghm" />
        </node>
        <node concept="lc7rE" id="O0bPWJVdoy" role="3cqZAp">
          <node concept="la8eA" id="O0bPWJVfZS" role="lcghm">
            <property role="lacIc" value="STATE currentState = " />
          </node>
          <node concept="l9hG8" id="O0bPWJVhTZ" role="lcghm">
            <node concept="2OqwBi" id="O0bPWJVirM" role="lb14g">
              <node concept="2OqwBi" id="O0bPWJVirN" role="2Oq$k0">
                <node concept="2OqwBi" id="O0bPWJVirO" role="2Oq$k0">
                  <node concept="117lpO" id="O0bPWJVirP" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="O0bPWJVirQ" role="2OqNvi">
                    <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                  </node>
                </node>
                <node concept="1z4cxt" id="O0bPWJVirR" role="2OqNvi">
                  <node concept="1bVj0M" id="O0bPWJVirS" role="23t8la">
                    <node concept="3clFbS" id="O0bPWJVirT" role="1bW5cS">
                      <node concept="3clFbF" id="O0bPWJVirU" role="3cqZAp">
                        <node concept="2OqwBi" id="O0bPWJVirV" role="3clFbG">
                          <node concept="37vLTw" id="O0bPWJVirW" role="2Oq$k0">
                            <ref role="3cqZAo" node="O0bPWJVirY" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="O0bPWJVirX" role="2OqNvi">
                            <ref role="3TsBF5" to="ge5j:6LAVG$wQHxf" resolve="isInitial" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="O0bPWJVirY" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="O0bPWJVirZ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="O0bPWJVis0" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="O0bPWJVoKl" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="1QS_xBSvmxg" role="lcghm" />
        </node>
        <node concept="lc7rE" id="508e52S0znE" role="3cqZAp">
          <node concept="la8eA" id="508e52S0zIO" role="lcghm">
            <property role="lacIc" value="long debounce = 200;" />
          </node>
          <node concept="l8MVK" id="508e52S0$rc" role="lcghm" />
        </node>
        <node concept="3clFbH" id="2JnYSShPrte" role="3cqZAp" />
        <node concept="lc7rE" id="2JnYSShPr7m" role="3cqZAp">
          <node concept="la8eA" id="2JnYSShPr7n" role="lcghm">
            <property role="lacIc" value="long timeStartState = 0;" />
          </node>
          <node concept="l8MVK" id="2JnYSShPr7o" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2JnYSShPrNe" role="3cqZAp">
          <node concept="la8eA" id="2JnYSShPrNf" role="lcghm">
            <property role="lacIc" value="boolean hasStateChanged = true;" />
          </node>
          <node concept="l8MVK" id="2JnYSShPrNg" role="lcghm" />
        </node>
        <node concept="3clFbH" id="2JnYSShPqtq" role="3cqZAp" />
        <node concept="3clFbH" id="2JnYSShPqy5" role="3cqZAp" />
        <node concept="lc7rE" id="62oRKDP_yfe" role="3cqZAp">
          <node concept="l8MVK" id="62oRKDP_yim" role="lcghm" />
          <node concept="l8MVK" id="O0bPWJX6bx" role="lcghm" />
        </node>
        <node concept="lc7rE" id="1QS_xBSrvQd" role="3cqZAp">
          <node concept="la8eA" id="1QS_xBSrwnU" role="lcghm">
            <property role="lacIc" value="// Declaring bricks" />
          </node>
          <node concept="l8MVK" id="1QS_xBSrxeB" role="lcghm" />
        </node>
        <node concept="lc7rE" id="1QS_xBSsOe2" role="3cqZAp">
          <node concept="l9S2W" id="1QS_xBSsODH" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value="\n" />
            <node concept="2OqwBi" id="1QS_xBSsP$u" role="lbANJ">
              <node concept="117lpO" id="1QS_xBSsPtI" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1QS_xBSsPTH" role="2OqNvi">
                <ref role="3TtcxE" to="ge5j:1QS_xBSr5UP" resolve="bricks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QS_xBSrS6I" role="3cqZAp" />
        <node concept="3clFbH" id="1QS_xBSsREJ" role="3cqZAp" />
        <node concept="3SKdUt" id="508e52S0dzQ" role="3cqZAp">
          <node concept="1PaTwC" id="508e52S0dzR" role="1aUNEU">
            <node concept="3oM_SD" id="508e52S0eEX" role="1PaTwD">
              <property role="3oM_SC" value="SETUP" />
            </node>
            <node concept="3oM_SD" id="508e52S0eGL" role="1PaTwD">
              <property role="3oM_SC" value="--------------------------------------------------------------------" />
            </node>
          </node>
        </node>
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
            <node concept="3clFbH" id="2JnYSShSbOe" role="3cqZAp" />
            <node concept="3SKdUt" id="2JnYSShSd4E" role="3cqZAp">
              <node concept="1PaTwC" id="2JnYSShSd4F" role="1aUNEU">
                <node concept="3oM_SD" id="2JnYSShSd6v" role="1PaTwD">
                  <property role="3oM_SC" value="" />
                </node>
                <node concept="3oM_SD" id="2JnYSShSdfW" role="1PaTwD">
                  <property role="3oM_SC" value="Add" />
                </node>
                <node concept="3oM_SD" id="2JnYSShSdfG" role="1PaTwD">
                  <property role="3oM_SC" value="serial" />
                </node>
                <node concept="3oM_SD" id="2JnYSShSdgz" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="2JnYSShSdgZ" role="1PaTwD">
                  <property role="3oM_SC" value="need" />
                </node>
                <node concept="3oM_SD" id="2JnYSShSdhk" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="2JnYSShSdhC" role="1PaTwD">
                  <property role="3oM_SC" value="debug" />
                </node>
              </node>
            </node>
            <node concept="1bpajm" id="2JnYSShSf_q" role="3cqZAp" />
            <node concept="lc7rE" id="2JnYSShSemg" role="3cqZAp">
              <node concept="la8eA" id="2JnYSShSfKB" role="lcghm">
                <property role="lacIc" value="Serial.begin(9600);" />
              </node>
              <node concept="l8MVK" id="2JnYSShSfLs" role="lcghm" />
              <node concept="l8MVK" id="2JnYSShSfM4" role="lcghm" />
            </node>
            <node concept="3clFbH" id="2JnYSShSbPX" role="3cqZAp" />
            <node concept="3clFbF" id="1QS_xBStfVg" role="3cqZAp">
              <node concept="2OqwBi" id="1QS_xBStibf" role="3clFbG">
                <node concept="2OqwBi" id="1QS_xBStgh4" role="2Oq$k0">
                  <node concept="117lpO" id="1QS_xBStfVf" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1QS_xBStgGl" role="2OqNvi">
                    <ref role="3TtcxE" to="ge5j:1QS_xBSr5UP" resolve="bricks" />
                  </node>
                </node>
                <node concept="2es0OD" id="1QS_xBStlkt" role="2OqNvi">
                  <node concept="1bVj0M" id="1QS_xBStlkv" role="23t8la">
                    <node concept="3clFbS" id="1QS_xBStlkw" role="1bW5cS">
                      <node concept="1bpajm" id="1QS_xBStmAB" role="3cqZAp" />
                      <node concept="3clFbH" id="1QS_xBStuz0" role="3cqZAp" />
                      <node concept="3clFbJ" id="1QS_xBStlIM" role="3cqZAp">
                        <node concept="3clFbS" id="1QS_xBStlIO" role="3clFbx">
                          <node concept="3clFbJ" id="1QS_xBStquf" role="3cqZAp">
                            <node concept="3clFbS" id="1QS_xBStquh" role="3clFbx">
                              <node concept="lc7rE" id="508e52RSNma" role="3cqZAp">
                                <node concept="l9hG8" id="508e52RSNmx" role="lcghm">
                                  <node concept="2OqwBi" id="508e52RSNu3" role="lb14g">
                                    <node concept="37vLTw" id="1QS_xBStSBe" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
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
                                    <node concept="2OqwBi" id="1QS_xBStUNn" role="37wK5m">
                                      <node concept="1PxgMI" id="1QS_xBStTO5" role="2Oq$k0">
                                        <node concept="chp4Y" id="1QS_xBStTUE" role="3oSUPX">
                                          <ref role="cht4Q" to="ge5j:5iaO0WrUz9o" resolve="ActuatorLCD" />
                                        </node>
                                        <node concept="37vLTw" id="1QS_xBStTxp" role="1m5AlR">
                                          <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="1QS_xBStVxD" role="2OqNvi">
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
                                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                    <node concept="2OqwBi" id="1QS_xBStWjm" role="37wK5m">
                                      <node concept="1PxgMI" id="1QS_xBStW5I" role="2Oq$k0">
                                        <node concept="chp4Y" id="1QS_xBStWcv" role="3oSUPX">
                                          <ref role="cht4Q" to="ge5j:5iaO0WrUz9o" resolve="ActuatorLCD" />
                                        </node>
                                        <node concept="37vLTw" id="1QS_xBStTBF" role="1m5AlR">
                                          <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="1QS_xBStWxC" role="2OqNvi">
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
                            <node concept="2OqwBi" id="1QS_xBStqId" role="3clFbw">
                              <node concept="37vLTw" id="1QS_xBStqyy" role="2Oq$k0">
                                <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
                              </node>
                              <node concept="1mIQ4w" id="1QS_xBStr7C" role="2OqNvi">
                                <node concept="chp4Y" id="1QS_xBStrbK" role="cj9EA">
                                  <ref role="cht4Q" to="ge5j:5iaO0WrUz9o" resolve="ActuatorLCD" />
                                </node>
                              </node>
                            </node>
                            <node concept="9aQIb" id="1QS_xBSts_Q" role="9aQIa">
                              <node concept="3clFbS" id="1QS_xBSts_R" role="9aQI4">
                                <node concept="lc7rE" id="1QS_xBStmqj" role="3cqZAp">
                                  <node concept="la8eA" id="1QS_xBStmqk" role="lcghm">
                                    <property role="lacIc" value="pinMode(" />
                                  </node>
                                  <node concept="l9hG8" id="1QS_xBStmql" role="lcghm">
                                    <node concept="2OqwBi" id="1QS_xBStmqm" role="lb14g">
                                      <node concept="37vLTw" id="1QS_xBStmqn" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
                                      </node>
                                      <node concept="3TrcHB" id="1QS_xBStmqo" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="la8eA" id="1QS_xBStmqp" role="lcghm">
                                    <property role="lacIc" value=", " />
                                  </node>
                                  <node concept="la8eA" id="1QS_xBStmqq" role="lcghm">
                                    <property role="lacIc" value="OUTPUT);" />
                                  </node>
                                  <node concept="l8MVK" id="1QS_xBStmqr" role="lcghm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="1QS_xBStuqO" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="1QS_xBStlVs" role="3clFbw">
                          <node concept="37vLTw" id="1QS_xBStlLj" role="2Oq$k0">
                            <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
                          </node>
                          <node concept="1mIQ4w" id="1QS_xBStmj9" role="2OqNvi">
                            <node concept="chp4Y" id="1QS_xBStmnB" role="cj9EA">
                              <ref role="cht4Q" to="ge5j:5iaO0WrUz9k" resolve="IActuator" />
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="1QS_xBStmOz" role="3eNLev">
                          <node concept="2OqwBi" id="1QS_xBStn2B" role="3eO9$A">
                            <node concept="37vLTw" id="1QS_xBStmRH" role="2Oq$k0">
                              <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
                            </node>
                            <node concept="1mIQ4w" id="1QS_xBStnrb" role="2OqNvi">
                              <node concept="chp4Y" id="1QS_xBStnuy" role="cj9EA">
                                <ref role="cht4Q" to="ge5j:62oRKDPEyDQ" resolve="ISensor" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1QS_xBStmO_" role="3eOfB_">
                            <node concept="lc7rE" id="1QS_xBStoZw" role="3cqZAp">
                              <node concept="la8eA" id="1QS_xBStoZx" role="lcghm">
                                <property role="lacIc" value="pinMode(" />
                              </node>
                              <node concept="l9hG8" id="1QS_xBStoZy" role="lcghm">
                                <node concept="2OqwBi" id="1QS_xBStoZz" role="lb14g">
                                  <node concept="37vLTw" id="1QS_xBStoZ$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1QS_xBStlkx" resolve="brick" />
                                  </node>
                                  <node concept="3TrcHB" id="1QS_xBStoZ_" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                              <node concept="la8eA" id="1QS_xBStoZA" role="lcghm">
                                <property role="lacIc" value=", INPUT);" />
                              </node>
                              <node concept="l8MVK" id="1QS_xBStoZB" role="lcghm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1QS_xBStlkx" role="1bW2Oz">
                      <property role="TrG5h" value="brick" />
                      <node concept="2jxLKc" id="1QS_xBStlky" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6LAVG$wUgFu" role="3cqZAp" />
            <node concept="3SKdUt" id="6LAVG$wUEOu" role="3cqZAp">
              <node concept="1PaTwC" id="6LAVG$wUEOv" role="1aUNEU">
                <node concept="3oM_SD" id="6LAVG$wUFKe" role="1PaTwD">
                  <property role="3oM_SC" value="Set" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFKn" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFL3" role="1PaTwD">
                  <property role="3oM_SC" value="error" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFLi" role="1PaTwD">
                  <property role="3oM_SC" value="LED" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFLF" role="1PaTwD">
                  <property role="3oM_SC" value="if" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFM7" role="1PaTwD">
                  <property role="3oM_SC" value="there" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFMn" role="1PaTwD">
                  <property role="3oM_SC" value="are" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFMz" role="1PaTwD">
                  <property role="3oM_SC" value="error" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFMM" role="1PaTwD">
                  <property role="3oM_SC" value="states" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFN2" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFNg" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6LAVG$wUFNw" role="1PaTwD">
                  <property role="3oM_SC" value="program" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6LAVG$wUh0G" role="3cqZAp">
              <node concept="3clFbS" id="6LAVG$wUh0I" role="3clFbx">
                <node concept="1bpajm" id="6LAVG$wUi1u" role="3cqZAp" />
                <node concept="lc7rE" id="6LAVG$wUi21" role="3cqZAp">
                  <node concept="la8eA" id="6LAVG$wUi22" role="lcghm">
                    <property role="lacIc" value="pinMode(LED_BUILTIN, OUTPUT);" />
                  </node>
                  <node concept="l8MVK" id="6LAVG$wUi23" role="lcghm" />
                </node>
              </node>
              <node concept="2OqwBi" id="6LAVG$wUaCW" role="3clFbw">
                <node concept="2OqwBi" id="6LAVG$wU999" role="2Oq$k0">
                  <node concept="117lpO" id="6LAVG$wU8Sv" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6LAVG$wU9yi" role="2OqNvi">
                    <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                  </node>
                </node>
                <node concept="2HwmR7" id="6LAVG$wUew3" role="2OqNvi">
                  <node concept="1bVj0M" id="6LAVG$wUew5" role="23t8la">
                    <node concept="3clFbS" id="6LAVG$wUew6" role="1bW5cS">
                      <node concept="3clFbF" id="6LAVG$wUeLx" role="3cqZAp">
                        <node concept="2OqwBi" id="6LAVG$wUeVK" role="3clFbG">
                          <node concept="37vLTw" id="6LAVG$wUeLw" role="2Oq$k0">
                            <ref role="3cqZAo" node="6LAVG$wUew7" resolve="state" />
                          </node>
                          <node concept="1mIQ4w" id="6LAVG$wUfn8" role="2OqNvi">
                            <node concept="chp4Y" id="6LAVG$wUfvk" role="cj9EA">
                              <ref role="cht4Q" to="ge5j:6LAVG$wRSgK" resolve="StateError" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6LAVG$wUew7" role="1bW2Oz">
                      <property role="TrG5h" value="state" />
                      <node concept="2jxLKc" id="6LAVG$wUew8" role="1tU5fm" />
                    </node>
                  </node>
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
        </node>
        <node concept="3clFbH" id="508e52S0fO2" role="3cqZAp" />
        <node concept="3SKdUt" id="O0bPWJX3B$" role="3cqZAp">
          <node concept="1PaTwC" id="O0bPWJX3B_" role="1aUNEU">
            <node concept="3oM_SD" id="O0bPWJX48d" role="1PaTwD">
              <property role="3oM_SC" value="LOOP" />
            </node>
            <node concept="3oM_SD" id="O0bPWJX48j" role="1PaTwD">
              <property role="3oM_SC" value="----------------------------------------------------------------------" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="O0bPWJX7I3" role="3cqZAp">
          <node concept="l8MVK" id="O0bPWJX9c5" role="lcghm" />
          <node concept="l8MVK" id="O0bPWJX9g7" role="lcghm" />
        </node>
        <node concept="lc7rE" id="O0bPWJRUc1" role="3cqZAp">
          <node concept="la8eA" id="O0bPWJRVwQ" role="lcghm">
            <property role="lacIc" value="void loop()" />
          </node>
          <node concept="l8MVK" id="O0bPWJRWkX" role="lcghm" />
        </node>
        <node concept="lc7rE" id="O0bPWJRX8N" role="3cqZAp">
          <node concept="la8eA" id="O0bPWJRYtF" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
          <node concept="l8MVK" id="O0bPWJRYxH" role="lcghm" />
        </node>
        <node concept="3izx1p" id="O0bPWJS0Ic" role="3cqZAp">
          <node concept="3clFbS" id="O0bPWJS0Ie" role="3izTki">
            <node concept="1bpajm" id="O0bPWJX49O" role="3cqZAp" />
            <node concept="lc7rE" id="O0bPWJS15R" role="3cqZAp">
              <node concept="la8eA" id="O0bPWJS16b" role="lcghm">
                <property role="lacIc" value="switch(currentState){" />
              </node>
              <node concept="l8MVK" id="O0bPWJS17H" role="lcghm" />
            </node>
            <node concept="3izx1p" id="O0bPWK1173" role="3cqZAp">
              <node concept="3clFbS" id="O0bPWK1175" role="3izTki">
                <node concept="2Gpval" id="O0bPWJXITF" role="3cqZAp">
                  <node concept="2GrKxI" id="O0bPWJXITH" role="2Gsz3X">
                    <property role="TrG5h" value="state" />
                  </node>
                  <node concept="2OqwBi" id="O0bPWJXJ42" role="2GsD0m">
                    <node concept="117lpO" id="O0bPWJXIVa" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="O0bPWJXJg_" role="2OqNvi">
                      <ref role="3TtcxE" to="ge5j:62oRKDPzNrp" resolve="states" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="O0bPWJXITL" role="2LFqv$">
                    <node concept="1bpajm" id="O0bPWK1Uv5" role="3cqZAp" />
                    <node concept="lc7rE" id="O0bPWJXJjp" role="3cqZAp">
                      <node concept="la8eA" id="O0bPWJXJoO" role="lcghm">
                        <property role="lacIc" value="case " />
                      </node>
                      <node concept="l9hG8" id="O0bPWJXJqh" role="lcghm">
                        <node concept="2OqwBi" id="O0bPWJXJxI" role="lb14g">
                          <node concept="2GrUjf" id="O0bPWJXJr9" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="O0bPWJXITH" resolve="state" />
                          </node>
                          <node concept="3TrcHB" id="O0bPWJXJT3" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="la8eA" id="O0bPWJXJWe" role="lcghm">
                        <property role="lacIc" value=":" />
                      </node>
                      <node concept="l8MVK" id="O0bPWJXJXu" role="lcghm" />
                    </node>
                    <node concept="3izx1p" id="O0bPWJZdU$" role="3cqZAp">
                      <node concept="3clFbS" id="O0bPWJZdUA" role="3izTki">
                        <node concept="lc7rE" id="O0bPWJXJY4" role="3cqZAp">
                          <node concept="l9hG8" id="O0bPWJXJZ9" role="lcghm">
                            <node concept="2GrUjf" id="O0bPWJXK00" role="lb14g">
                              <ref role="2Gs0qQ" node="O0bPWJXITH" resolve="state" />
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="O0bPWK1Umo" role="3cqZAp" />
                        <node concept="lc7rE" id="O0bPWJXK34" role="3cqZAp">
                          <node concept="la8eA" id="O0bPWJXK4d" role="lcghm">
                            <property role="lacIc" value="break;" />
                          </node>
                          <node concept="l8MVK" id="O0bPWJXK57" role="lcghm" />
                          <node concept="l8MVK" id="O0bPWK98r9" role="lcghm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="O0bPWJXISU" role="3cqZAp" />
            <node concept="1bpajm" id="O0bPWJX4az" role="3cqZAp" />
            <node concept="lc7rE" id="O0bPWJS18A" role="3cqZAp">
              <node concept="la8eA" id="O0bPWJS190" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="l8MVK" id="O0bPWJXD$N" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="O0bPWJRYZj" role="3cqZAp">
          <node concept="la8eA" id="O0bPWJS052" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="O0bPWJXEm2" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="62oRKDPA9wM">
    <ref role="WuzLi" to="ge5j:62oRKDPzNri" resolve="State" />
    <node concept="11bSqf" id="62oRKDPA9wN" role="11c4hB">
      <node concept="3clFbS" id="62oRKDPA9wO" role="2VODD2">
        <node concept="3SKdUt" id="2JnYSShPm3c" role="3cqZAp">
          <node concept="1PaTwC" id="2JnYSShPm3d" role="1aUNEU">
            <node concept="3oM_SD" id="2JnYSShPmr3" role="1PaTwD">
              <property role="3oM_SC" value="Set" />
            </node>
            <node concept="3oM_SD" id="2JnYSShPmrY" role="1PaTwD">
              <property role="3oM_SC" value="state" />
            </node>
            <node concept="3oM_SD" id="2JnYSShPmsz" role="1PaTwD">
              <property role="3oM_SC" value="has" />
            </node>
            <node concept="3oM_SD" id="2JnYSShPmt3" role="1PaTwD">
              <property role="3oM_SC" value="changed" />
            </node>
            <node concept="3oM_SD" id="2JnYSShPmtg" role="1PaTwD">
              <property role="3oM_SC" value="variable" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2JnYSShPgwV" role="3cqZAp">
          <node concept="3clFbS" id="2JnYSShPgwX" role="3clFbx">
            <node concept="1bpajm" id="2JnYSShQqri" role="3cqZAp" />
            <node concept="lc7rE" id="2JnYSShPmtR" role="3cqZAp">
              <node concept="la8eA" id="2JnYSShPmuf" role="lcghm">
                <property role="lacIc" value="if(hasStateChanged) {" />
              </node>
              <node concept="l8MVK" id="2JnYSShPmva" role="lcghm" />
            </node>
            <node concept="1bpajm" id="2JnYSShQqsf" role="3cqZAp" />
            <node concept="lc7rE" id="2JnYSShPmvO" role="3cqZAp">
              <node concept="2BGw6n" id="2JnYSShPmwf" role="lcghm" />
              <node concept="la8eA" id="2JnYSShPmwT" role="lcghm">
                <property role="lacIc" value="timeStartState = millis();" />
              </node>
              <node concept="l8MVK" id="2JnYSShPmxQ" role="lcghm" />
            </node>
            <node concept="1bpajm" id="2JnYSShQqte" role="3cqZAp" />
            <node concept="lc7rE" id="2JnYSShQPDf" role="3cqZAp">
              <node concept="2BGw6n" id="2JnYSShQPDQ" role="lcghm" />
              <node concept="la8eA" id="2JnYSShQPEw" role="lcghm">
                <property role="lacIc" value="hasStateChanged = false;" />
              </node>
              <node concept="l8MVK" id="2JnYSShQPGx" role="lcghm" />
            </node>
            <node concept="1bpajm" id="2JnYSShQPCd" role="3cqZAp" />
            <node concept="lc7rE" id="2JnYSShPmy_" role="3cqZAp">
              <node concept="la8eA" id="2JnYSShPmz4" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="l8MVK" id="2JnYSShPmzZ" role="lcghm" />
              <node concept="l8MVK" id="2JnYSShPm$F" role="lcghm" />
            </node>
          </node>
          <node concept="2OqwBi" id="2JnYSShPidv" role="3clFbw">
            <node concept="2OqwBi" id="2JnYSShPgJa" role="2Oq$k0">
              <node concept="117lpO" id="2JnYSShPgAu" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2JnYSShPh60" role="2OqNvi">
                <ref role="3TtcxE" to="ge5j:508e52RTiuv" resolve="transitions" />
              </node>
            </node>
            <node concept="2HwmR7" id="2JnYSShPkGh" role="2OqNvi">
              <node concept="1bVj0M" id="2JnYSShPkGj" role="23t8la">
                <node concept="3clFbS" id="2JnYSShPkGk" role="1bW5cS">
                  <node concept="3clFbF" id="2JnYSShPkQu" role="3cqZAp">
                    <node concept="2OqwBi" id="2JnYSShPl02" role="3clFbG">
                      <node concept="37vLTw" id="2JnYSShPkQt" role="2Oq$k0">
                        <ref role="3cqZAo" node="2JnYSShPkGl" resolve="transition" />
                      </node>
                      <node concept="1mIQ4w" id="2JnYSShPlou" role="2OqNvi">
                        <node concept="chp4Y" id="2JnYSShPlww" role="cj9EA">
                          <ref role="cht4Q" to="ge5j:2JnYSShP1DU" resolve="TransitionTime" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2JnYSShPkGl" role="1bW2Oz">
                  <property role="TrG5h" value="transition" />
                  <node concept="2jxLKc" id="2JnYSShPkGm" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2JnYSShPayO" role="3cqZAp" />
        <node concept="3clFbF" id="O0bPWK2lR7" role="3cqZAp">
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
                  <node concept="1bpajm" id="62oRKDPAfS6" role="3cqZAp" />
                  <node concept="lc7rE" id="62oRKDPAfXU" role="3cqZAp">
                    <node concept="l9hG8" id="62oRKDPAg0b" role="lcghm">
                      <node concept="37vLTw" id="62oRKDPAg2W" role="lb14g">
                        <ref role="3cqZAo" node="62oRKDPAfIR" resolve="action" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="62oRKDPAfIR" role="1bW2Oz">
                  <property role="TrG5h" value="action" />
                  <node concept="2jxLKc" id="62oRKDPAfIS" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="O0bPWK2lOq" role="3cqZAp" />
        <node concept="3clFbF" id="508e52RXlxP" role="3cqZAp">
          <node concept="2OqwBi" id="508e52RXmS9" role="3clFbG">
            <node concept="2OqwBi" id="508e52RXlFz" role="2Oq$k0">
              <node concept="117lpO" id="508e52RXlxO" role="2Oq$k0" />
              <node concept="3Tsc0h" id="508e52RXlXy" role="2OqNvi">
                <ref role="3TtcxE" to="ge5j:508e52RTiuv" resolve="transitions" />
              </node>
            </node>
            <node concept="2es0OD" id="508e52RXp$u" role="2OqNvi">
              <node concept="1bVj0M" id="508e52RXp$w" role="23t8la">
                <node concept="3clFbS" id="508e52RXp$x" role="1bW5cS">
                  <node concept="1bpajm" id="508e52RXPNw" role="3cqZAp" />
                  <node concept="lc7rE" id="508e52RXPT3" role="3cqZAp">
                    <node concept="l9hG8" id="508e52RXPXl" role="lcghm">
                      <node concept="37vLTw" id="508e52RXQ00" role="lb14g">
                        <ref role="3cqZAo" node="508e52RXp$y" resolve="transition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="508e52RXp$y" role="1bW2Oz">
                  <property role="TrG5h" value="transition" />
                  <node concept="2jxLKc" id="508e52RXp$z" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
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
            <node concept="3TrcHB" id="1QS_xBSq2qC" role="2OqNvi">
              <ref role="3TsBF5" to="ge5j:O0bPWKaXTl" resolve="pin" />
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
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RRflD" role="37wK5m">
                <node concept="2OqwBi" id="508e52RRf06" role="2Oq$k0">
                  <node concept="117lpO" id="508e52RRe$l" role="2Oq$k0" />
                  <node concept="3TrEf2" id="508e52RRfcv" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:508e52RN5HJ" resolve="target" />
                  </node>
                </node>
                <node concept="3TrcHB" id="508e52RRfKC" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RRjDx" role="37wK5m">
                <node concept="2OqwBi" id="508e52RRjke" role="2Oq$k0">
                  <node concept="117lpO" id="508e52RRj9_" role="2Oq$k0" />
                  <node concept="3TrEf2" id="508e52RRjwt" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:508e52RN5HO" resolve="target" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1QS_xBSn4ds" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
                  <ref role="3TsBF5" to="ge5j:O0bPWKaXTl" resolve="pin" />
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
    <ref role="WuzLi" to="ge5j:508e52RQ6xK" resolve="ActionLCDSimpleText" />
    <node concept="11bSqf" id="508e52RR03o" role="11c4hB">
      <node concept="3clFbS" id="508e52RR03p" role="2VODD2">
        <node concept="lc7rE" id="7Mto9RJ3X65" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ3X66" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ3X67" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ3X68" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ3X69" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ3X6a" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ3X6b" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ3X6c" role="lcghm">
            <property role="lacIc" value=".setCursor(0," />
          </node>
          <node concept="l9hG8" id="7Mto9RJ3X6d" role="lcghm">
            <node concept="2YIFZM" id="7Mto9RJ3X6e" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="7Mto9RJ3X6f" role="37wK5m">
                <node concept="117lpO" id="7Mto9RJ3X6g" role="2Oq$k0" />
                <node concept="3TrcHB" id="7Mto9RJ3X6h" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ3X6i" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ3X6j" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ3Xf4" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ3ZLo" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ3ZLp" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ3ZLq" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ3ZLr" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ3ZLs" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ3ZLt" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ3ZLu" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ3ZLv" role="lcghm">
            <property role="lacIc" value=".print(&quot;" />
          </node>
          <node concept="l9hG8" id="7Mto9RJ3ZLw" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ3ZLx" role="lb14g">
              <node concept="2ShNRf" id="7Mto9RJ3ZLy" role="2Oq$k0">
                <node concept="1pGfFk" id="7Mto9RJ3ZLz" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(java.lang.String)" resolve="String" />
                  <node concept="Xl_RD" id="7Mto9RJ3ZL$" role="37wK5m">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7Mto9RJ3ZL_" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.repeat(int)" resolve="repeat" />
                <node concept="2OqwBi" id="7Mto9RJ3ZLA" role="37wK5m">
                  <node concept="2OqwBi" id="7Mto9RJ3ZLB" role="2Oq$k0">
                    <node concept="117lpO" id="7Mto9RJ3ZLC" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7Mto9RJ3ZLD" role="2OqNvi">
                      <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7Mto9RJ3ZLE" role="2OqNvi">
                    <ref role="3TsBF5" to="ge5j:508e52RKHjc" resolve="columns" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ3ZLF" role="lcghm">
            <property role="lacIc" value="&quot;);" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ3ZLG" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ3Ytx" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ3Y78" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ3Y79" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ3Y7a" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ3Y7b" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ3Y7c" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ3Y7d" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ3Y7e" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ3Y7f" role="lcghm">
            <property role="lacIc" value=".setCursor(0," />
          </node>
          <node concept="l9hG8" id="7Mto9RJ3Y7g" role="lcghm">
            <node concept="2YIFZM" id="7Mto9RJ3Y7h" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="7Mto9RJ3Y7i" role="37wK5m">
                <node concept="117lpO" id="7Mto9RJ3Y7j" role="2Oq$k0" />
                <node concept="3TrcHB" id="7Mto9RJ3Y7k" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ3Y7l" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ3Y7m" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ3XYJ" role="3cqZAp" />
        <node concept="lc7rE" id="508e52RRb29" role="3cqZAp">
          <node concept="l9hG8" id="508e52RRb2t" role="lcghm">
            <node concept="2OqwBi" id="508e52RRbYC" role="lb14g">
              <node concept="2OqwBi" id="508e52RRbcf" role="2Oq$k0">
                <node concept="117lpO" id="508e52RRb3j" role="2Oq$k0" />
                <node concept="3TrEf2" id="508e52RRbN2" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
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
  <node concept="WtQ9Q" id="508e52RTZg9">
    <ref role="WuzLi" to="ge5j:508e52RTY3y" resolve="ConditionAnalog" />
    <node concept="11bSqf" id="508e52RTZgb" role="11c4hB">
      <node concept="3clFbS" id="508e52RTZgc" role="2VODD2">
        <node concept="lc7rE" id="508e52RTZgv" role="3cqZAp">
          <node concept="la8eA" id="508e52RU3FK" role="lcghm">
            <property role="lacIc" value="analogRead(" />
          </node>
          <node concept="l9hG8" id="508e52RU3IR" role="lcghm">
            <node concept="2YIFZM" id="508e52RU5ka" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RU642" role="37wK5m">
                <node concept="2OqwBi" id="508e52RU5wZ" role="2Oq$k0">
                  <node concept="117lpO" id="508e52RU5mm" role="2Oq$k0" />
                  <node concept="3TrEf2" id="508e52RU5NF" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:508e52RTY3_" resolve="sensor" />
                  </node>
                </node>
                <node concept="3TrcHB" id="508e52RU6he" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RU95t" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
          <node concept="l9hG8" id="508e52RYxS6" role="lcghm">
            <node concept="2OqwBi" id="508e52RYy0M" role="lb14g">
              <node concept="117lpO" id="508e52RYxU7" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RYyrI" role="2OqNvi">
                <ref role="3TsBF5" to="ge5j:508e52RTZfk" resolve="comparator" />
              </node>
            </node>
          </node>
          <node concept="l9hG8" id="508e52RYz6Q" role="lcghm">
            <node concept="2YIFZM" id="508e52RYzKE" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RYzQq" role="37wK5m">
                <node concept="117lpO" id="508e52RYzLJ" role="2Oq$k0" />
                <node concept="3TrcHB" id="508e52RY$c3" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:508e52RTZg6" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RU98l">
    <ref role="WuzLi" to="ge5j:508e52RU3_U" resolve="ConditionDigital" />
    <node concept="11bSqf" id="508e52RU98m" role="11c4hB">
      <node concept="3clFbS" id="508e52RU98n" role="2VODD2">
        <node concept="lc7rE" id="508e52RU98E" role="3cqZAp">
          <node concept="la8eA" id="508e52RU98Y" role="lcghm">
            <property role="lacIc" value="digitalRead(" />
          </node>
          <node concept="l9hG8" id="508e52RU9aw" role="lcghm">
            <node concept="2YIFZM" id="508e52RU9cf" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RUaCi" role="37wK5m">
                <node concept="2OqwBi" id="508e52RUa6d" role="2Oq$k0">
                  <node concept="117lpO" id="508e52RU9V$" role="2Oq$k0" />
                  <node concept="3TrEf2" id="508e52RUapv" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:508e52RU3A1" resolve="sensor" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1QS_xBSn96v" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RUbE8" role="lcghm">
            <property role="lacIc" value=") == " />
          </node>
          <node concept="l9hG8" id="508e52RYxli" role="lcghm">
            <node concept="2OqwBi" id="508e52RYxtY" role="lb14g">
              <node concept="117lpO" id="508e52RYxnj" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RYxLR" role="2OqNvi">
                <ref role="3TsBF5" to="ge5j:508e52RU3_Z" resolve="signal" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RUbHk">
    <ref role="WuzLi" to="ge5j:508e52RTjbB" resolve="Transition" />
    <node concept="11bSqf" id="508e52RUbHl" role="11c4hB">
      <node concept="3clFbS" id="508e52RUbHm" role="2VODD2">
        <node concept="lc7rE" id="508e52RXUkJ" role="3cqZAp">
          <node concept="la8eA" id="508e52RXUl3" role="lcghm">
            <property role="lacIc" value="if(" />
          </node>
        </node>
        <node concept="1Dw8fO" id="508e52RXVcM" role="3cqZAp">
          <node concept="3clFbS" id="508e52RXVcO" role="2LFqv$">
            <node concept="3clFbJ" id="508e52RYR7d" role="3cqZAp">
              <node concept="3clFbS" id="508e52RYR7f" role="3clFbx">
                <node concept="lc7rE" id="O0bPWK6_tV" role="3cqZAp">
                  <node concept="2BGw6n" id="O0bPWK6_uf" role="lcghm" />
                  <node concept="la8eA" id="O0bPWK8g$7" role="lcghm">
                    <property role="lacIc" value="   " />
                  </node>
                </node>
              </node>
              <node concept="2d3UOw" id="508e52S2GDU" role="3clFbw">
                <node concept="37vLTw" id="508e52RYR9R" role="3uHU7B">
                  <ref role="3cqZAo" node="508e52RXVcP" resolve="i" />
                </node>
                <node concept="3cmrfG" id="508e52RYSri" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="508e52RYVIY" role="3cqZAp" />
            <node concept="lc7rE" id="508e52RYaWH" role="3cqZAp">
              <node concept="l9hG8" id="508e52RYaX3" role="lcghm">
                <node concept="1y4W85" id="508e52RYd9q" role="lb14g">
                  <node concept="37vLTw" id="508e52RYdcK" role="1y58nS">
                    <ref role="3cqZAo" node="508e52RXVcP" resolve="i" />
                  </node>
                  <node concept="2OqwBi" id="508e52RYbgr" role="1y566C">
                    <node concept="117lpO" id="508e52RYb9K" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="508e52RYbyF" role="2OqNvi">
                      <ref role="3TtcxE" to="ge5j:508e52RUbFQ" resolve="conditions" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="508e52RYW4$" role="3cqZAp" />
            <node concept="3clFbJ" id="508e52RYnvO" role="3cqZAp">
              <node concept="3clFbS" id="508e52RYnvQ" role="3clFbx">
                <node concept="lc7rE" id="508e52RYvbr" role="3cqZAp">
                  <node concept="la8eA" id="508e52RYvcK" role="lcghm">
                    <property role="lacIc" value=" &amp;&amp; " />
                  </node>
                  <node concept="l8MVK" id="508e52RYvdo" role="lcghm" />
                </node>
              </node>
              <node concept="3eOVzh" id="508e52RYog7" role="3clFbw">
                <node concept="3cpWsd" id="508e52RYv5y" role="3uHU7w">
                  <node concept="3cmrfG" id="508e52RYv71" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="508e52RYqpk" role="3uHU7B">
                    <node concept="2OqwBi" id="508e52RYoBj" role="2Oq$k0">
                      <node concept="117lpO" id="508e52RYog_" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="508e52RYoTB" role="2OqNvi">
                        <ref role="3TtcxE" to="ge5j:508e52RUbFQ" resolve="conditions" />
                      </node>
                    </node>
                    <node concept="34oBXx" id="508e52RYt8s" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="508e52RYnyX" role="3uHU7B">
                  <ref role="3cqZAo" node="508e52RXVcP" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="508e52RYVJC" role="3cqZAp" />
          </node>
          <node concept="3cpWsn" id="508e52RXVcP" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="508e52RXVe7" role="1tU5fm" />
            <node concept="3cmrfG" id="508e52RXVf5" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="508e52RY3I6" role="1Dwp0S">
            <node concept="2OqwBi" id="508e52RY638" role="3uHU7w">
              <node concept="2OqwBi" id="508e52RY4es" role="2Oq$k0">
                <node concept="117lpO" id="508e52RY3Ru" role="2Oq$k0" />
                <node concept="3Tsc0h" id="508e52RY4vE" role="2OqNvi">
                  <ref role="3TtcxE" to="ge5j:508e52RUbFQ" resolve="conditions" />
                </node>
              </node>
              <node concept="34oBXx" id="508e52RY8H$" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="508e52RY30Z" role="3uHU7B">
              <ref role="3cqZAo" node="508e52RXVcP" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="508e52RYaVe" role="1Dwrff">
            <node concept="37vLTw" id="508e52RYaVg" role="2$L3a6">
              <ref role="3cqZAo" node="508e52RXVcP" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QS_xBSqFMR" role="3cqZAp">
          <node concept="3clFbS" id="1QS_xBSqFMT" role="3clFbx">
            <node concept="lc7rE" id="1QS_xBSqKw1" role="3cqZAp">
              <node concept="la8eA" id="1QS_xBSqKwp" role="lcghm">
                <property role="lacIc" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1QS_xBSqHw2" role="3clFbw">
            <node concept="2OqwBi" id="1QS_xBSqG3a" role="2Oq$k0">
              <node concept="117lpO" id="1QS_xBSqFV8" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1QS_xBSqGlv" role="2OqNvi">
                <ref role="3TtcxE" to="ge5j:508e52RUbFQ" resolve="conditions" />
              </node>
            </node>
            <node concept="1v1jN8" id="1QS_xBSqKtd" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="1QS_xBSqFEP" role="3cqZAp" />
        <node concept="lc7rE" id="508e52RYkuO" role="3cqZAp">
          <node concept="la8eA" id="508e52RYkz9" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
          <node concept="l8MVK" id="508e52RYmdH" role="lcghm" />
        </node>
        <node concept="2Gpval" id="508e52S0H4s" role="3cqZAp">
          <node concept="2GrKxI" id="508e52S0H4u" role="2Gsz3X">
            <property role="TrG5h" value="condition" />
          </node>
          <node concept="2OqwBi" id="508e52S0HiI" role="2GsD0m">
            <node concept="117lpO" id="508e52S0Haw" role="2Oq$k0" />
            <node concept="3Tsc0h" id="508e52S0H$Y" role="2OqNvi">
              <ref role="3TtcxE" to="ge5j:508e52RUbFQ" resolve="conditions" />
            </node>
          </node>
          <node concept="3clFbS" id="508e52S0H4y" role="2LFqv$">
            <node concept="3clFbJ" id="508e52S0IAw" role="3cqZAp">
              <node concept="2OqwBi" id="508e52S0QSw" role="3clFbw">
                <node concept="2GrUjf" id="508e52S0IAT" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="508e52S0H4u" resolve="condition" />
                </node>
                <node concept="1mIQ4w" id="508e52S0RbS" role="2OqNvi">
                  <node concept="chp4Y" id="508e52S0ReI" role="cj9EA">
                    <ref role="cht4Q" to="ge5j:508e52S0CVd" resolve="ConditionDigitalButton" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="508e52S0IAy" role="3clFbx">
                <node concept="lc7rE" id="O0bPWK8ENR" role="3cqZAp">
                  <node concept="2BGw6n" id="O0bPWK8EOo" role="lcghm" />
                  <node concept="2BGw6n" id="O0bPWK8EOY" role="lcghm" />
                </node>
                <node concept="lc7rE" id="508e52S1P3W" role="3cqZAp">
                  <node concept="l9hG8" id="508e52S1PkD" role="lcghm">
                    <node concept="2OqwBi" id="508e52S1O61" role="lb14g">
                      <node concept="2OqwBi" id="508e52S1Mxh" role="2Oq$k0">
                        <node concept="1PxgMI" id="508e52S1Mk3" role="2Oq$k0">
                          <node concept="chp4Y" id="508e52S1MpA" role="3oSUPX">
                            <ref role="cht4Q" to="ge5j:508e52S0CVd" resolve="ConditionDigitalButton" />
                          </node>
                          <node concept="2GrUjf" id="508e52S1Me6" role="1m5AlR">
                            <ref role="2Gs0qQ" node="508e52S0H4u" resolve="condition" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="508e52S1NTG" role="2OqNvi">
                          <ref role="3Tt5mk" to="ge5j:508e52S2E4A" resolve="sensor" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="508e52S1Ov5" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="508e52S1Pr0" role="lcghm">
                    <property role="lacIc" value="LastDebounceTime = millis();" />
                  </node>
                  <node concept="l8MVK" id="508e52S1Pt3" role="lcghm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="508e52S0GPf" role="3cqZAp" />
        <node concept="lc7rE" id="508e52RYkCa" role="3cqZAp">
          <node concept="2BGw6n" id="508e52RYvRv" role="lcghm" />
          <node concept="2BGw6n" id="O0bPWK8ETZ" role="lcghm" />
          <node concept="la8eA" id="508e52RYlIT" role="lcghm">
            <property role="lacIc" value="currentState = " />
          </node>
          <node concept="l9hG8" id="508e52RYkOn" role="lcghm">
            <node concept="2OqwBi" id="508e52RYlnd" role="lb14g">
              <node concept="2OqwBi" id="508e52RYkVS" role="2Oq$k0">
                <node concept="117lpO" id="508e52RYkPd" role="2Oq$k0" />
                <node concept="3TrEf2" id="508e52RYld_" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:2JnYSShNRF1" resolve="state" />
                </node>
              </node>
              <node concept="3TrcHB" id="508e52RYm53" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RYma_" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="508e52RYmcy" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2JnYSShPuvx" role="3cqZAp">
          <node concept="2BGw6n" id="2JnYSShPuvy" role="lcghm" />
          <node concept="2BGw6n" id="2JnYSShPuvz" role="lcghm" />
          <node concept="la8eA" id="2JnYSShPuv$" role="lcghm">
            <property role="lacIc" value="hasStateChanged = true;" />
          </node>
          <node concept="l8MVK" id="2JnYSShPuvG" role="lcghm" />
        </node>
        <node concept="1bpajm" id="508e52RZwHM" role="3cqZAp" />
        <node concept="lc7rE" id="508e52RYvuk" role="3cqZAp">
          <node concept="la8eA" id="508e52RYvyO" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="508e52RYvzD" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RWQb1">
    <ref role="WuzLi" to="ge5j:62oRKDPEyEi" resolve="SensorAnalog" />
    <node concept="11bSqf" id="508e52RWQb2" role="11c4hB">
      <node concept="3clFbS" id="508e52RWQb3" role="2VODD2">
        <node concept="lc7rE" id="508e52RWRGq" role="3cqZAp">
          <node concept="la8eA" id="508e52RWRH1" role="lcghm">
            <property role="lacIc" value="int " />
          </node>
          <node concept="l9hG8" id="508e52RWRH$" role="lcghm">
            <node concept="2OqwBi" id="508e52RWRPC" role="lb14g">
              <node concept="117lpO" id="508e52RWRIr" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RWSag" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RWSdK" role="lcghm">
            <property role="lacIc" value=" = " />
          </node>
          <node concept="l9hG8" id="508e52RWSfv" role="lcghm">
            <node concept="2YIFZM" id="508e52RWShF" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RWSvl" role="37wK5m">
                <node concept="117lpO" id="508e52RWSjU" role="2Oq$k0" />
                <node concept="3TrcHB" id="508e52RWSFh" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:O0bPWKaXTl" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RWVJF" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52RWTuR">
    <ref role="WuzLi" to="ge5j:62oRKDPEcmR" resolve="SensorDigital" />
    <node concept="11bSqf" id="508e52RWTuS" role="11c4hB">
      <node concept="3clFbS" id="508e52RWTuT" role="2VODD2">
        <node concept="lc7rE" id="508e52RWTvc" role="3cqZAp">
          <node concept="la8eA" id="508e52RWTvN" role="lcghm">
            <property role="lacIc" value="int " />
          </node>
          <node concept="l9hG8" id="508e52RWTwm" role="lcghm">
            <node concept="2OqwBi" id="508e52RWTCq" role="lb14g">
              <node concept="117lpO" id="508e52RWTxd" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52RWTX_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RWU15" role="lcghm">
            <property role="lacIc" value=" = " />
          </node>
          <node concept="l9hG8" id="508e52RWU2O" role="lcghm">
            <node concept="2YIFZM" id="508e52RWU5c" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52RWUcm" role="37wK5m">
                <node concept="117lpO" id="508e52RWU7r" role="2Oq$k0" />
                <node concept="3TrcHB" id="508e52RWUfA" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:O0bPWKaXTl" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52RWVPv" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52S08nd">
    <ref role="WuzLi" to="ge5j:508e52S08mg" resolve="SensorButtonDigital" />
    <node concept="11bSqf" id="508e52S08ne" role="11c4hB">
      <node concept="3clFbS" id="508e52S08nf" role="2VODD2">
        <node concept="lc7rE" id="508e52S090z" role="3cqZAp">
          <node concept="la8eA" id="508e52S090$" role="lcghm">
            <property role="lacIc" value="int " />
          </node>
          <node concept="l9hG8" id="508e52S090_" role="lcghm">
            <node concept="2OqwBi" id="508e52S090A" role="lb14g">
              <node concept="117lpO" id="508e52S090B" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52S090C" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52S090D" role="lcghm">
            <property role="lacIc" value=" = " />
          </node>
          <node concept="l9hG8" id="508e52S090E" role="lcghm">
            <node concept="2YIFZM" id="508e52S090F" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="508e52S090G" role="37wK5m">
                <node concept="117lpO" id="508e52S090H" role="2Oq$k0" />
                <node concept="3TrcHB" id="508e52S090I" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:O0bPWKaXTl" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52S090J" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="1QS_xBSsM7C" role="lcghm" />
        </node>
        <node concept="lc7rE" id="1QS_xBSsMbE" role="3cqZAp">
          <node concept="la8eA" id="1QS_xBSsMbF" role="lcghm">
            <property role="lacIc" value="boolean " />
          </node>
          <node concept="l9hG8" id="1QS_xBSsMbG" role="lcghm">
            <node concept="2OqwBi" id="1QS_xBSsMbH" role="lb14g">
              <node concept="3TrcHB" id="1QS_xBSsMbJ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="117lpO" id="1QS_xBSsMpT" role="2Oq$k0" />
            </node>
          </node>
          <node concept="la8eA" id="1QS_xBSsMbK" role="lcghm">
            <property role="lacIc" value="BounceGuard = false;" />
          </node>
          <node concept="l8MVK" id="1QS_xBSsMbL" role="lcghm" />
        </node>
        <node concept="lc7rE" id="1QS_xBSsMqQ" role="3cqZAp">
          <node concept="la8eA" id="1QS_xBSsMqR" role="lcghm">
            <property role="lacIc" value="long " />
          </node>
          <node concept="l9hG8" id="1QS_xBSsMqS" role="lcghm">
            <node concept="2OqwBi" id="1QS_xBSsMqT" role="lb14g">
              <node concept="117lpO" id="1QS_xBSsNrR" role="2Oq$k0" />
              <node concept="3TrcHB" id="1QS_xBSsMqV" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1QS_xBSsMqW" role="lcghm">
            <property role="lacIc" value="LastDebounceTime = 0;" />
          </node>
        </node>
        <node concept="3clFbH" id="1QS_xBSsM9D" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="508e52S0CVK">
    <ref role="WuzLi" to="ge5j:508e52S0CVd" resolve="ConditionDigitalButton" />
    <node concept="11bSqf" id="508e52S0DB6" role="11c4hB">
      <node concept="3clFbS" id="508e52S0DB7" role="2VODD2">
        <node concept="lc7rE" id="508e52S0DB8" role="3cqZAp">
          <node concept="la8eA" id="508e52S0DB9" role="lcghm">
            <property role="lacIc" value="digitalRead(" />
          </node>
          <node concept="l9hG8" id="508e52S0DBa" role="lcghm">
            <node concept="2YIFZM" id="508e52S0DBb" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <node concept="2OqwBi" id="508e52S0DBc" role="37wK5m">
                <node concept="2OqwBi" id="508e52S0DBd" role="2Oq$k0">
                  <node concept="117lpO" id="508e52S0DBe" role="2Oq$k0" />
                  <node concept="3TrEf2" id="508e52S0DBf" role="2OqNvi">
                    <ref role="3Tt5mk" to="ge5j:508e52S2E4A" resolve="sensor" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1QS_xBSn9D2" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52S0DBh" role="lcghm">
            <property role="lacIc" value=") == " />
          </node>
          <node concept="l9hG8" id="508e52S0DBi" role="lcghm">
            <node concept="2OqwBi" id="508e52S0DBj" role="lb14g">
              <node concept="117lpO" id="508e52S0DBk" role="2Oq$k0" />
              <node concept="3TrcHB" id="508e52S0DBl" role="2OqNvi">
                <ref role="3TsBF5" to="ge5j:508e52S2E4$" resolve="signal" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52S0Ghq" role="lcghm">
            <property role="lacIc" value=" &amp;&amp; " />
          </node>
        </node>
        <node concept="lc7rE" id="508e52S0DJq" role="3cqZAp">
          <node concept="la8eA" id="508e52S0Eq3" role="lcghm">
            <property role="lacIc" value="(millis() - " />
          </node>
          <node concept="l9hG8" id="508e52S0Etk" role="lcghm">
            <node concept="2OqwBi" id="508e52S0F50" role="lb14g">
              <node concept="2OqwBi" id="508e52S0EAm" role="2Oq$k0">
                <node concept="117lpO" id="508e52S0Eva" role="2Oq$k0" />
                <node concept="3TrEf2" id="508e52S0EUY" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:508e52S2E4A" resolve="sensor" />
                </node>
              </node>
              <node concept="3TrcHB" id="508e52S0Ftk" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="508e52S0FvT" role="lcghm">
            <property role="lacIc" value="LastDebounceTime" />
          </node>
          <node concept="la8eA" id="508e52S0Gdc" role="lcghm">
            <property role="lacIc" value=" &gt; debounce)" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1QS_xBSop5W">
    <ref role="WuzLi" to="ge5j:O0bPWK9L_B" resolve="ActionLCDDigitalReaderText" />
    <node concept="11bSqf" id="1QS_xBSop5X" role="11c4hB">
      <node concept="3clFbS" id="1QS_xBSop5Y" role="2VODD2">
        <node concept="lc7rE" id="1QS_xBSvBsD" role="3cqZAp">
          <node concept="l9hG8" id="1QS_xBSvBt5" role="lcghm">
            <node concept="2OqwBi" id="1QS_xBSvC6D" role="lb14g">
              <node concept="2OqwBi" id="1QS_xBSvB$x" role="2Oq$k0">
                <node concept="117lpO" id="1QS_xBSvBtX" role="2Oq$k0" />
                <node concept="3TrEf2" id="1QS_xBSvBU0" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="1QS_xBSvCy7" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="1QS_xBSvCBS" role="lcghm">
            <property role="lacIc" value=".setCursor(0," />
          </node>
          <node concept="l9hG8" id="7Mto9RIZgFr" role="lcghm">
            <node concept="2YIFZM" id="7Mto9RIZie0" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="7Mto9RIZgN$" role="37wK5m">
                <node concept="117lpO" id="7Mto9RIZgH0" role="2Oq$k0" />
                <node concept="3TrcHB" id="7Mto9RIZhLj" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RIZjgH" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="1QS_xBSvCG9" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RIYCyE" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ2B9O" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ2B9P" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ2B9Q" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ2B9R" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ2B9S" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ2B9T" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ2B9U" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ2B9V" role="lcghm">
            <property role="lacIc" value=".print(&quot;" />
          </node>
          <node concept="l9hG8" id="7Mto9RJ2B9W" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ2B9X" role="lb14g">
              <node concept="2ShNRf" id="7Mto9RJ2B9Y" role="2Oq$k0">
                <node concept="1pGfFk" id="7Mto9RJ2B9Z" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(java.lang.String)" resolve="String" />
                  <node concept="Xl_RD" id="7Mto9RJ2Ba0" role="37wK5m">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7Mto9RJ2Ba1" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.repeat(int)" resolve="repeat" />
                <node concept="2OqwBi" id="7Mto9RJ2Ba2" role="37wK5m">
                  <node concept="2OqwBi" id="7Mto9RJ2Ba3" role="2Oq$k0">
                    <node concept="117lpO" id="7Mto9RJ2Ba4" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7Mto9RJ2Ba5" role="2OqNvi">
                      <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7Mto9RJ2Ba6" role="2OqNvi">
                    <ref role="3TsBF5" to="ge5j:508e52RKHjc" resolve="columns" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ2Ba7" role="lcghm">
            <property role="lacIc" value="&quot;);" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ2Ba8" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ2Ayn" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ2_eR" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ2_eS" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ2_eT" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ2_eU" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ2_eV" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ2_eW" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ2_eX" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ2_eY" role="lcghm">
            <property role="lacIc" value=".setCursor(0," />
          </node>
          <node concept="l9hG8" id="7Mto9RJ2_eZ" role="lcghm">
            <node concept="2YIFZM" id="7Mto9RJ2_f0" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="7Mto9RJ2_f1" role="37wK5m">
                <node concept="117lpO" id="7Mto9RJ2_f2" role="2Oq$k0" />
                <node concept="3TrcHB" id="7Mto9RJ2_f3" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ2_f4" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ2_f5" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ2_ls" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ2_xJ" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ2_xK" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ2_xL" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ2_xM" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ2_xN" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ2_xO" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ2_xP" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ2_xQ" role="lcghm">
            <property role="lacIc" value=".print(&quot;" />
          </node>
          <node concept="l9hG8" id="7Mto9RJ2_xR" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ2_xS" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ2_xT" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ2_xU" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ2_xV" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:O0bPWK9L_M" resolve="brick" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ2_xW" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ2_xX" role="lcghm">
            <property role="lacIc" value=" : &quot; + String(digitalRead(" />
          </node>
          <node concept="l9hG8" id="7Mto9RJ2_xY" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ2_xZ" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ2_y0" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ2_y1" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ2_y2" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:O0bPWK9L_M" resolve="brick" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ2_y3" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ2_y4" role="lcghm">
            <property role="lacIc" value=")));" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ2_y5" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1QS_xBSop6j">
    <ref role="WuzLi" to="ge5j:O0bPWK9L_$" resolve="ActionLCDAnalogReaderText" />
    <node concept="11bSqf" id="1QS_xBSop6k" role="11c4hB">
      <node concept="3clFbS" id="1QS_xBSop6l" role="2VODD2">
        <node concept="lc7rE" id="7Mto9RJ0gxx" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ0gxy" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ0gxz" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ0gx$" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ0gx_" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ0gxA" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ0gxB" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ0gxC" role="lcghm">
            <property role="lacIc" value=".setCursor(0," />
          </node>
          <node concept="l9hG8" id="7Mto9RJ0gxD" role="lcghm">
            <node concept="2YIFZM" id="7Mto9RJ0gxE" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="7Mto9RJ0gxF" role="37wK5m">
                <node concept="117lpO" id="7Mto9RJ0gxG" role="2Oq$k0" />
                <node concept="3TrcHB" id="7Mto9RJ0gxH" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ0gxI" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ0gxJ" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ1aWr" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ0hpl" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ0hpm" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ0hpn" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ0hpo" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ0hpp" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ0hpq" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ0hpr" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ0hps" role="lcghm">
            <property role="lacIc" value=".print(&quot;" />
          </node>
          <node concept="l9hG8" id="7Mto9RJ1cgx" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ1fFH" role="lb14g">
              <node concept="2ShNRf" id="7Mto9RJ1dDb" role="2Oq$k0">
                <node concept="1pGfFk" id="7Mto9RJ1eRV" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(java.lang.String)" resolve="String" />
                  <node concept="Xl_RD" id="7Mto9RJ1N2H" role="37wK5m">
                    <property role="Xl_RC" value=" " />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7Mto9RJ1gok" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.repeat(int)" resolve="repeat" />
                <node concept="2OqwBi" id="7Mto9RJ1h89" role="37wK5m">
                  <node concept="2OqwBi" id="7Mto9RJ1g$E" role="2Oq$k0">
                    <node concept="117lpO" id="7Mto9RJ1gqf" role="2Oq$k0" />
                    <node concept="3TrEf2" id="7Mto9RJ1gTl" role="2OqNvi">
                      <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="7Mto9RJ1h$x" role="2OqNvi">
                    <ref role="3TsBF5" to="ge5j:508e52RKHjc" resolve="columns" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ0hpE" role="lcghm">
            <property role="lacIc" value="&quot;);" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ0hpF" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ1bcT" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ19lG" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ19lH" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ19lI" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ19lJ" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ19lK" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ19lL" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ19lM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ19lN" role="lcghm">
            <property role="lacIc" value=".setCursor(0," />
          </node>
          <node concept="l9hG8" id="7Mto9RJ19lO" role="lcghm">
            <node concept="2YIFZM" id="7Mto9RJ19lP" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="7Mto9RJ19lQ" role="37wK5m">
                <node concept="117lpO" id="7Mto9RJ19lR" role="2Oq$k0" />
                <node concept="3TrcHB" id="7Mto9RJ19lS" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ19lT" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ19lU" role="lcghm" />
        </node>
        <node concept="1bpajm" id="7Mto9RJ0hkj" role="3cqZAp" />
        <node concept="lc7rE" id="7Mto9RJ1aq3" role="3cqZAp">
          <node concept="l9hG8" id="7Mto9RJ1aq4" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ1aq5" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ1aq6" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ1aq7" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ1aq8" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ57Ue" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ1aq9" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ1aqa" role="lcghm">
            <property role="lacIc" value=".print(&quot;" />
          </node>
          <node concept="l9hG8" id="7Mto9RJ1aqb" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ1aqc" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ1aqd" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ1aqe" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ1aqf" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ0fIU" resolve="brick" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ1aqg" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ1aqh" role="lcghm">
            <property role="lacIc" value=" : &quot; + String(analogRead(" />
          </node>
          <node concept="l9hG8" id="7Mto9RJ1aqi" role="lcghm">
            <node concept="2OqwBi" id="7Mto9RJ1aqj" role="lb14g">
              <node concept="2OqwBi" id="7Mto9RJ1aqk" role="2Oq$k0">
                <node concept="117lpO" id="7Mto9RJ1aql" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Mto9RJ1aqm" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:7Mto9RJ0fIU" resolve="brick" />
                </node>
              </node>
              <node concept="3TrcHB" id="7Mto9RJ1aqn" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="7Mto9RJ1aqo" role="lcghm">
            <property role="lacIc" value=")));" />
          </node>
          <node concept="l8MVK" id="7Mto9RJ1aqp" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6LAVG$wSi4G">
    <ref role="WuzLi" to="ge5j:6LAVG$wRSgK" resolve="StateError" />
    <node concept="11bSqf" id="6LAVG$wSi4H" role="11c4hB">
      <node concept="3clFbS" id="6LAVG$wSi4I" role="2VODD2">
        <node concept="1bpajm" id="6LAVG$wSNI9" role="3cqZAp" />
        <node concept="lc7rE" id="6LAVG$wSk0r" role="3cqZAp">
          <node concept="2BGw6n" id="6LAVG$wSkdW" role="lcghm" />
          <node concept="la8eA" id="6LAVG$wSke$" role="lcghm">
            <property role="lacIc" value="for(int i = 0; i &lt;" />
          </node>
          <node concept="l9hG8" id="6LAVG$wSkh8" role="lcghm">
            <node concept="2YIFZM" id="6LAVG$wSmba" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="6LAVG$wSmoI" role="37wK5m">
                <node concept="117lpO" id="6LAVG$wSmdq" role="2Oq$k0" />
                <node concept="3TrcHB" id="6LAVG$wSmHQ" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:6LAVG$wRSgN" resolve="errorValue" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6LAVG$wSnyH" role="lcghm">
            <property role="lacIc" value="; i++) {" />
          </node>
          <node concept="l8MVK" id="6LAVG$wSogD" role="lcghm" />
        </node>
        <node concept="1bpajm" id="6LAVG$wSot0" role="3cqZAp" />
        <node concept="lc7rE" id="6LAVG$wSokQ" role="3cqZAp">
          <node concept="2BGw6n" id="6LAVG$wSomo" role="lcghm" />
          <node concept="la8eA" id="6LAVG$wSouz" role="lcghm">
            <property role="lacIc" value="digitalWrite(LED_BUILTIN, HIGH);" />
          </node>
          <node concept="l8MVK" id="6LAVG$wSqCS" role="lcghm" />
        </node>
        <node concept="1bpajm" id="6LAVG$wSrFm" role="3cqZAp" />
        <node concept="lc7rE" id="6LAVG$wSp9H" role="3cqZAp">
          <node concept="2BGw6n" id="6LAVG$wSp9I" role="lcghm" />
          <node concept="la8eA" id="6LAVG$wSp9K" role="lcghm">
            <property role="lacIc" value="delay(300);" />
          </node>
          <node concept="l8MVK" id="6LAVG$wSrmT" role="lcghm" />
        </node>
        <node concept="1bpajm" id="6LAVG$wSsnh" role="3cqZAp" />
        <node concept="lc7rE" id="6LAVG$wSpQ8" role="3cqZAp">
          <node concept="2BGw6n" id="6LAVG$wSpQ9" role="lcghm" />
          <node concept="la8eA" id="6LAVG$wSpQb" role="lcghm">
            <property role="lacIc" value="digitalWrite(LED_BUILTIN, LOW);" />
          </node>
          <node concept="l8MVK" id="6LAVG$wSrpq" role="lcghm" />
        </node>
        <node concept="1bpajm" id="6LAVG$wSsrc" role="3cqZAp" />
        <node concept="lc7rE" id="6LAVG$wSqwr" role="3cqZAp">
          <node concept="2BGw6n" id="6LAVG$wSqws" role="lcghm" />
          <node concept="la8eA" id="6LAVG$wSqwu" role="lcghm">
            <property role="lacIc" value="delay(300);" />
          </node>
          <node concept="l8MVK" id="6LAVG$wSrrV" role="lcghm" />
        </node>
        <node concept="1bpajm" id="6LAVG$wSsv9" role="3cqZAp" />
        <node concept="lc7rE" id="6LAVG$wSq$5" role="3cqZAp">
          <node concept="2BGw6n" id="6LAVG$wSq$6" role="lcghm" />
          <node concept="la8eA" id="6LAVG$wSq$8" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="6LAVG$wSrur" role="lcghm" />
        </node>
        <node concept="1bpajm" id="6LAVG$wSsz8" role="3cqZAp" />
        <node concept="lc7rE" id="6LAVG$wSry8" role="3cqZAp">
          <node concept="la8eA" id="6LAVG$wSryb" role="lcghm">
            <property role="lacIc" value="delay(1000);" />
          </node>
          <node concept="l8MVK" id="6LAVG$wSryc" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2JnYSShP3Dm">
    <ref role="WuzLi" to="ge5j:2JnYSShP1DU" resolve="TransitionTime" />
    <node concept="11bSqf" id="2JnYSShP4Lf" role="11c4hB">
      <node concept="3clFbS" id="2JnYSShP4Lg" role="2VODD2">
        <node concept="lc7rE" id="2JnYSShP4L$" role="3cqZAp">
          <node concept="la8eA" id="2JnYSShP4LT" role="lcghm">
            <property role="lacIc" value="if(millis() - timeStartState &gt; " />
          </node>
          <node concept="l9hG8" id="2JnYSShP4MK" role="lcghm">
            <node concept="2YIFZM" id="2JnYSShP5Af" role="lb14g">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <node concept="2OqwBi" id="2JnYSShP5N8" role="37wK5m">
                <node concept="117lpO" id="2JnYSShP5Cv" role="2Oq$k0" />
                <node concept="3TrcHB" id="2JnYSShP5Yd" role="2OqNvi">
                  <ref role="3TsBF5" to="ge5j:2JnYSShP1DX" resolve="timeBeforeTransition" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2JnYSShP6RU" role="lcghm">
            <property role="lacIc" value=") {" />
          </node>
          <node concept="l8MVK" id="2JnYSShP6V6" role="lcghm" />
        </node>
        <node concept="1bpajm" id="2JnYSShRj1k" role="3cqZAp" />
        <node concept="lc7rE" id="2JnYSShP7My" role="3cqZAp">
          <node concept="2BGw6n" id="2JnYSShP7M$" role="lcghm" />
          <node concept="la8eA" id="2JnYSShP7M_" role="lcghm">
            <property role="lacIc" value="currentState = " />
          </node>
          <node concept="l9hG8" id="2JnYSShP7MA" role="lcghm">
            <node concept="2OqwBi" id="2JnYSShP7MB" role="lb14g">
              <node concept="2OqwBi" id="2JnYSShP7MC" role="2Oq$k0">
                <node concept="117lpO" id="2JnYSShP7MD" role="2Oq$k0" />
                <node concept="3TrEf2" id="2JnYSShP7ME" role="2OqNvi">
                  <ref role="3Tt5mk" to="ge5j:2JnYSShNRF1" resolve="state" />
                </node>
              </node>
              <node concept="3TrcHB" id="2JnYSShP7MF" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2JnYSShP7MG" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="2JnYSShP7MH" role="lcghm" />
        </node>
        <node concept="1bpajm" id="2JnYSShRj5z" role="3cqZAp" />
        <node concept="lc7rE" id="2JnYSShPnps" role="3cqZAp">
          <node concept="2BGw6n" id="2JnYSShPodt" role="lcghm" />
          <node concept="la8eA" id="2JnYSShPofT" role="lcghm">
            <property role="lacIc" value="hasStateChanged = true;" />
          </node>
          <node concept="l8MVK" id="2JnYSShPoiP" role="lcghm" />
        </node>
        <node concept="1bpajm" id="2JnYSShRje0" role="3cqZAp" />
        <node concept="lc7rE" id="2JnYSShP8Jm" role="3cqZAp">
          <node concept="la8eA" id="2JnYSShP9zk" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="2JnYSShPamb" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

