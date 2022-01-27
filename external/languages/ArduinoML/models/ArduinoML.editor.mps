<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f7fcb582-3c06-4450-a87c-05061295bd4d(ArduinoML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ge5j" ref="r:5bf5c70d-4c1e-4b5b-ac48-7f5374e997a2(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="928328222691832421" name="separatorTextQuery" index="2gpyvW" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="709996738298806197" name="jetbrains.mps.lang.editor.structure.QueryFunction_SeparatorText" flags="in" index="2o9xnK" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styles" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="2906093235281475560" name="jetbrains.mps.lang.editor.structure.SpellCheckStyle" flags="lg" index="1liFee" />
      <concept id="1223387125302" name="jetbrains.mps.lang.editor.structure.QueryFunction_Boolean" flags="in" index="3nzxsE" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="9122903797336200704" name="jetbrains.mps.lang.editor.structure.ApplyStyleClassCondition" flags="lg" index="1uO$qF">
        <child id="9122903797336200706" name="query" index="1uO$qD" />
      </concept>
      <concept id="9122903797312246523" name="jetbrains.mps.lang.editor.structure.StyleReference" flags="ng" index="1wgc9g">
        <reference id="9122903797312247166" name="style" index="1wgcnl" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1950447826681509042" name="jetbrains.mps.lang.editor.structure.ApplyStyleClass" flags="lg" index="3Xmtl4">
        <child id="1950447826683828796" name="target" index="3XvnJa" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="62oRKDP$7fo">
    <ref role="1XX52x" to="ge5j:62oRKDPzNr5" resolve="ActuatorDigital" />
    <node concept="3EZMnI" id="1QS_xBSlINU" role="2wV5jI">
      <node concept="3EZMnI" id="1QS_xBSlINV" role="3EZMnx">
        <node concept="VPM3Z" id="1QS_xBSlINW" role="3F10Kt" />
        <node concept="3F0ifn" id="1QS_xBSlINX" role="3EZMnx">
          <property role="3F0ifm" value="actuator digital:" />
          <node concept="VechU" id="7QYskAWFIEy" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="1QS_xBSlINY" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWz90s" role="3F10Kt">
            <property role="Vb096" value="fLwANPs/magenta" />
          </node>
        </node>
        <node concept="3F0ifn" id="1QS_xBSlINZ" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
          <node concept="VechU" id="7QYskAWFIE$" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="1QS_xBSlIO0" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:O0bPWKaXTl" resolve="pin" />
          <node concept="VechU" id="7QYskAWz8ZZ" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="1QS_xBSlIO1" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="1QS_xBSlIO2" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDP$hDF">
    <ref role="1XX52x" to="ge5j:62oRKDPzNr3" resolve="App" />
    <node concept="3EZMnI" id="62oRKDP$hDH" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDP$hDL" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hDN" role="3F10Kt" />
        <node concept="3F0ifn" id="62oRKDP$hDW" role="3EZMnx">
          <property role="3F0ifm" value="application " />
          <node concept="VechU" id="7QYskAW_ApX" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="62oRKDP$hE1" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWCuHb" role="3F10Kt">
            <property role="Vb096" value="fLwANPq/yellow" />
            <node concept="1iSF2X" id="7QYskAWCuHc" role="VblUZ">
              <property role="1iTho6" value="d8b106" />
            </node>
          </node>
          <node concept="Vb9p2" id="7QYskAWEV6G" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
          <node concept="1liFee" id="7QYskAWEV6P" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hDQ" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="1QS_xBSr5Wl" role="3EZMnx" />
      <node concept="3EZMnI" id="1QS_xBSr61O" role="3EZMnx">
        <node concept="VPM3Z" id="1QS_xBSr61P" role="3F10Kt" />
        <node concept="3XFhqQ" id="1QS_xBSr61Q" role="3EZMnx" />
        <node concept="3F2HdR" id="1QS_xBSr61R" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:1QS_xBSr5UP" resolve="bricks" />
          <node concept="2iRkQZ" id="1QS_xBSr61S" role="2czzBx" />
          <node concept="VPM3Z" id="1QS_xBSr61T" role="3F10Kt" />
          <node concept="3F0ifn" id="1QS_xBSr61U" role="2czzBI">
            <property role="3F0ifm" value="[no Bricks defined]" />
            <node concept="VechU" id="7QYskAWApVD" role="3F10Kt">
              <property role="Vb096" value="fLJRk5_/gray" />
            </node>
            <node concept="Vb9p2" id="7QYskAWApVJ" role="3F10Kt" />
          </node>
        </node>
        <node concept="l2Vlx" id="1QS_xBSr61V" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="7W0bUzHUPB0" role="3EZMnx" />
      <node concept="3EZMnI" id="7W0bUzHUPBO" role="3EZMnx">
        <node concept="VPM3Z" id="7W0bUzHUPBQ" role="3F10Kt" />
        <node concept="3XFhqQ" id="7W0bUzHUPCn" role="3EZMnx" />
        <node concept="3F2HdR" id="7W0bUzHUPCt" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7W0bUzHUPA9" resolve="tasks" />
          <node concept="2iRkQZ" id="7W0bUzHUPCw" role="2czzBx" />
          <node concept="VPM3Z" id="7W0bUzHUPCx" role="3F10Kt" />
          <node concept="3F0ifn" id="7W0bUzHUPCC" role="2czzBI">
            <property role="3F0ifm" value="[no tasks defined]" />
            <node concept="VechU" id="7QYskAWApVN" role="3F10Kt">
              <property role="Vb096" value="fLJRk5_/gray" />
            </node>
            <node concept="Vb9p2" id="7QYskAWApVO" role="3F10Kt" />
          </node>
        </node>
        <node concept="l2Vlx" id="7W0bUzHUPBT" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="7W0bUzHUPDK" role="3EZMnx" />
      <node concept="2iRkQZ" id="62oRKDP$hDK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDP$hFJ">
    <ref role="1XX52x" to="ge5j:62oRKDPzNri" resolve="State" />
    <node concept="3EZMnI" id="62oRKDP$hFL" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDP$hFP" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hFR" role="3F10Kt" />
        <node concept="3F0ifn" id="7QYskAWA0aA" role="3EZMnx">
          <property role="3F0ifm" value="State" />
          <node concept="VechU" id="7QYskAWAOIq" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="62oRKDP$hFW" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="1liFee" id="7QYskAW_cCn" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VechU" id="7QYskAWCuZk" role="3F10Kt">
            <property role="Vb096" value="fLwANPq/yellow" />
            <node concept="1iSF2X" id="7QYskAWCuZl" role="VblUZ">
              <property role="1iTho6" value="d8b106" />
            </node>
          </node>
          <node concept="Vb9p2" id="7QYskAWEV6g" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="62oRKDP$hFZ" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3XFhqQ" id="62oRKDP$hG2" role="3EZMnx" />
        <node concept="3XFhqQ" id="62oRKDP$hG9" role="3EZMnx" />
        <node concept="3XFhqQ" id="62oRKDP$hGc" role="3EZMnx" />
        <node concept="3F0ifn" id="62oRKDP$hGh" role="3EZMnx">
          <property role="3F0ifm" value="initial:" />
          <node concept="VechU" id="7QYskAWAOIm" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="62oRKDP$hGm" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:6LAVG$wQHxf" resolve="isInitial" />
          <node concept="1uO$qF" id="7QYskAWAOGa" role="3F10Kt">
            <node concept="3nzxsE" id="7QYskAWAOGb" role="1uO$qD">
              <node concept="3clFbS" id="7QYskAWAOGc" role="2VODD2">
                <node concept="3clFbF" id="7QYskAWAOGd" role="3cqZAp">
                  <node concept="2OqwBi" id="7QYskAWAOGe" role="3clFbG">
                    <node concept="pncrf" id="7QYskAWAOGf" role="2Oq$k0" />
                    <node concept="3TrcHB" id="7QYskAWAOGg" role="2OqNvi">
                      <ref role="3TsBF5" to="ge5j:6LAVG$wQHxf" resolve="isInitial" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1wgc9g" id="7QYskAWAOGh" role="3XvnJa">
              <ref role="1wgcnl" node="7QYskAWzVUV" resolve="GreenStyle" />
            </node>
          </node>
          <node concept="1uO$qF" id="7QYskAWAOAE" role="3F10Kt">
            <node concept="3nzxsE" id="7QYskAWAOAF" role="1uO$qD">
              <node concept="3clFbS" id="7QYskAWAOAG" role="2VODD2">
                <node concept="3clFbF" id="7QYskAWAOAH" role="3cqZAp">
                  <node concept="3clFbC" id="7QYskAWAOAI" role="3clFbG">
                    <node concept="3clFbT" id="7QYskAWAOAJ" role="3uHU7w" />
                    <node concept="2OqwBi" id="7QYskAWAOAK" role="3uHU7B">
                      <node concept="pncrf" id="7QYskAWAOAL" role="2Oq$k0" />
                      <node concept="3TrcHB" id="7QYskAWAOAM" role="2OqNvi">
                        <ref role="3TsBF5" to="ge5j:6LAVG$wQHxf" resolve="isInitial" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1wgc9g" id="7QYskAWAOAN" role="3XvnJa">
              <ref role="1wgcnl" node="7QYskAWzVV6" resolve="GreyStyle" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hFU" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="508e52RUUyD" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUUyF" role="3F10Kt" />
        <node concept="3XFhqQ" id="508e52RUUzn" role="3EZMnx" />
        <node concept="3F0ifn" id="508e52RUUzt" role="3EZMnx">
          <property role="3F0ifm" value="actions:" />
          <node concept="VechU" id="7QYskAWzUXN" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="l2Vlx" id="508e52RUUyI" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="62oRKDP$hGp" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hGr" role="3F10Kt" />
        <node concept="3XFhqQ" id="62oRKDP$hGw" role="3EZMnx" />
        <node concept="3XFhqQ" id="508e52RVUQY" role="3EZMnx" />
        <node concept="3F2HdR" id="62oRKDP$hGz" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPzNrk" resolve="actions" />
          <node concept="2iRkQZ" id="62oRKDP$hGA" role="2czzBx" />
          <node concept="VPM3Z" id="62oRKDP$hGB" role="3F10Kt" />
          <node concept="3F0ifn" id="62oRKDP$hGD" role="2czzBI">
            <property role="3F0ifm" value="[no actions defined]" />
            <node concept="VechU" id="7QYskAWAqdZ" role="3F10Kt">
              <property role="Vb096" value="fLJRk5_/gray" />
            </node>
            <node concept="Vb9p2" id="7QYskAWAqe0" role="3F10Kt" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hGu" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="508e52RUU$b" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUU$d" role="3F10Kt" />
        <node concept="3XFhqQ" id="508e52RUU$Y" role="3EZMnx" />
        <node concept="3F0ifn" id="508e52RUU_4" role="3EZMnx">
          <property role="3F0ifm" value="transitions:" />
          <node concept="VechU" id="7QYskAWzUXR" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="l2Vlx" id="508e52RUU$g" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="508e52RUDLr" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUDLt" role="3F10Kt" />
        <node concept="3XFhqQ" id="508e52RUDM1" role="3EZMnx" />
        <node concept="3XFhqQ" id="508e52RVURd" role="3EZMnx" />
        <node concept="3F2HdR" id="508e52RUDM7" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RTiuv" resolve="transitions" />
          <node concept="2iRkQZ" id="508e52RUDMa" role="2czzBx" />
          <node concept="VPM3Z" id="508e52RUDMb" role="3F10Kt" />
          <node concept="3F0ifn" id="508e52RUDMg" role="2czzBI">
            <property role="3F0ifm" value="[no transitions defined]" />
            <node concept="VechU" id="7QYskAWAqe3" role="3F10Kt">
              <property role="Vb096" value="fLJRk5_/gray" />
            </node>
            <node concept="Vb9p2" id="7QYskAWAqe4" role="3F10Kt" />
          </node>
        </node>
        <node concept="l2Vlx" id="508e52RUDLw" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="508e52RWjta" role="3EZMnx" />
      <node concept="2iRkQZ" id="62oRKDP$hFO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDPEcFA">
    <ref role="1XX52x" to="ge5j:62oRKDPEcmR" resolve="SensorDigital" />
    <node concept="3EZMnI" id="62oRKDPEcFC" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDPEcFM" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDPEcFO" role="3F10Kt" />
        <node concept="3F0ifn" id="62oRKDPEcG5" role="3EZMnx">
          <property role="3F0ifm" value="sensor digital:" />
          <node concept="VechU" id="7QYskAWFIFl" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="62oRKDPEcGE" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWAqjl" role="3F10Kt">
            <property role="Vb096" value="fLwANPs/magenta" />
          </node>
        </node>
        <node concept="3F0ifn" id="62oRKDPEcGV" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
          <node concept="VechU" id="7QYskAWFIFn" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="62oRKDPEcGe" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:O0bPWKaXTl" resolve="pin" />
          <node concept="VechU" id="7QYskAWCSS9" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDPEcFR" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="62oRKDPEcFF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDPEyEu">
    <ref role="1XX52x" to="ge5j:62oRKDPEyEi" resolve="SensorAnalog" />
    <node concept="3EZMnI" id="62oRKDPEyEw" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDPEyEE" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDPEyEG" role="3F10Kt" />
        <node concept="3F0ifn" id="62oRKDPEyEX" role="3EZMnx">
          <property role="3F0ifm" value="sensor analog:" />
          <node concept="VechU" id="7QYskAWFIFh" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="62oRKDPEyF6" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWAqjj" role="3F10Kt">
            <property role="Vb096" value="fLwANPs/magenta" />
          </node>
        </node>
        <node concept="3F0ifn" id="62oRKDPEyFr" role="3EZMnx">
          <property role="3F0ifm" value="for pin" />
          <node concept="VechU" id="7QYskAWFIFj" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="62oRKDPEyFG" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:O0bPWKaXTl" resolve="pin" />
          <node concept="VechU" id="7QYskAWCSS7" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDPEyEJ" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="62oRKDPEyEz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RJhgR">
    <ref role="1XX52x" to="ge5j:5iaO0WrUz9o" resolve="LCD" />
    <node concept="3EZMnI" id="508e52RJhgT" role="2wV5jI">
      <node concept="3EZMnI" id="508e52RJhh0" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RJhh2" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52RJhhe" role="3EZMnx">
          <property role="3F0ifm" value="actuator LCD:" />
          <node concept="VechU" id="7QYskAWFIEA" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="508e52RJhhk" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWAqjh" role="3F10Kt">
            <property role="Vb096" value="fLwANPs/magenta" />
          </node>
        </node>
        <node concept="3F0ifn" id="508e52RKHjm" role="3EZMnx">
          <property role="3F0ifm" value="(" />
        </node>
        <node concept="3F0A7n" id="508e52RKHj$" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RKHjc" resolve="columns" />
          <node concept="VechU" id="7QYskAWCSS1" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="3F0ifn" id="508e52RKHkz" role="3EZMnx">
          <property role="3F0ifm" value=" cols, " />
          <node concept="VechU" id="7QYskAWFIEC" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="508e52RKHkf" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RKHj9" resolve="rows" />
          <node concept="VechU" id="7QYskAWCSS3" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="3F0ifn" id="508e52RKHkT" role="3EZMnx">
          <property role="3F0ifm" value=" rows" />
          <node concept="VechU" id="7QYskAWFIFd" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0ifn" id="7QYskAWFIEV" role="3EZMnx">
          <property role="3F0ifm" value=")" />
        </node>
        <node concept="3F0ifn" id="508e52RJhhx" role="3EZMnx">
          <property role="3F0ifm" value="on bus" />
          <node concept="VechU" id="7QYskAWFIFf" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="508e52RJhhF" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:6qpGXj2UsJ1" resolve="bus" />
          <node concept="VechU" id="7QYskAWCSS5" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="508e52RJhh5" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="508e52RJhgW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RN5HQ">
    <ref role="1XX52x" to="ge5j:508e52RN2d3" resolve="ActionDigital" />
    <node concept="3EZMnI" id="508e52RN5HS" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RN5Ia" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HJ" resolve="target" />
        <node concept="1sVBvm" id="508e52RN5Ic" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RN5Ij" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="7QYskAWAqj3" role="3F10Kt">
              <property role="Vb096" value="fLwANPs/magenta" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RN5Jx" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="508e52RN5JH" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HH" resolve="signal" />
        <node concept="VechU" id="7QYskAWFIE1" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="2iRfu4" id="508e52RN5HV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RN5JO">
    <ref role="1XX52x" to="ge5j:508e52RN5HL" resolve="ActionAnalog" />
    <node concept="3EZMnI" id="508e52RN5JQ" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RN5K8" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HO" resolve="target" />
        <node concept="1sVBvm" id="508e52RN5Ka" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RN5Kh" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="7QYskAWAqj1" role="3F10Kt">
              <property role="Vb096" value="fLwANPs/magenta" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RN5Kx" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="508e52RN5KH" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HM" resolve="signal" />
        <node concept="VechU" id="7QYskAWFIE3" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="2iRfu4" id="508e52RN5JT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RNEJo">
    <ref role="1XX52x" to="ge5j:508e52RMtqy" resolve="ActuatorAnalog" />
    <node concept="3EZMnI" id="508e52RNEJq" role="2wV5jI">
      <node concept="3EZMnI" id="508e52RNEJx" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RNEJz" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52RNEJJ" role="3EZMnx">
          <property role="3F0ifm" value="actuator analog:" />
          <node concept="VechU" id="7QYskAWFIEu" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="508e52RNEJV" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWyx_k" role="3F10Kt">
            <property role="Vb096" value="fLwANPs/magenta" />
          </node>
        </node>
        <node concept="3F0ifn" id="508e52RNEK8" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
          <node concept="VechU" id="7QYskAWFIEw" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="508e52RNEKi" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:O0bPWKaXTl" resolve="pin" />
          <node concept="VechU" id="7QYskAWyx_9" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="508e52RNEJA" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="508e52RNEJt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RQ$PP">
    <ref role="1XX52x" to="ge5j:508e52RQ6xK" resolve="ActionLCDSimpleText" />
    <node concept="3EZMnI" id="7Mto9RJ3Uuo" role="2wV5jI">
      <node concept="3EZMnI" id="7Mto9RJ3Uup" role="3EZMnx">
        <node concept="VPM3Z" id="7Mto9RJ3Uuq" role="3F10Kt" />
        <node concept="3F0ifn" id="7Mto9RJ3Uur" role="3EZMnx">
          <property role="3F0ifm" value="print &quot;" />
          <node concept="VechU" id="7QYskAWFIEk" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="7Mto9RJ3Uw7" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RQ6xN" resolve="text" />
          <node concept="VechU" id="7QYskAWAqj9" role="3F10Kt">
            <property role="Vb096" value="g1_qRwE/darkGreen" />
          </node>
        </node>
        <node concept="3F0ifn" id="7Mto9RJ3Uuv" role="3EZMnx">
          <property role="3F0ifm" value="&quot; on" />
          <node concept="VechU" id="7QYskAWFIEm" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="1iCGBv" id="7Mto9RJ3Uuw" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7Mto9RJ57Ue" resolve="target" />
          <node concept="1sVBvm" id="7Mto9RJ3Uux" role="1sWHZn">
            <node concept="3F0A7n" id="7Mto9RJ3Uuy" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="7QYskAWAqjb" role="3F10Kt">
                <property role="Vb096" value="fLwANPs/magenta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="7Mto9RJ3Uuz" role="3EZMnx">
          <property role="3F0ifm" value="row n°" />
          <node concept="VechU" id="7QYskAWFIEo" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="7Mto9RJ3Uu$" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
          <node concept="VechU" id="7QYskAWCSRT" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="7Mto9RJ3Uu_" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="7Mto9RJ3UuA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RTjJO">
    <ref role="1XX52x" to="ge5j:508e52RTjJJ" resolve="ActionSleep" />
    <node concept="3EZMnI" id="508e52RTjJQ" role="2wV5jI">
      <node concept="3F0ifn" id="508e52RTjK0" role="3EZMnx">
        <property role="3F0ifm" value="time: " />
        <node concept="VechU" id="7QYskAWFIEq" role="3F10Kt">
          <property role="Vb096" value="fLwANPp/orange" />
        </node>
      </node>
      <node concept="3F0A7n" id="508e52RTjK6" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTjJM" resolve="time_ms" />
        <node concept="VechU" id="7QYskAWCSRV" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RTjKe" role="3EZMnx">
        <property role="3F0ifm" value="ms" />
        <node concept="VechU" id="7QYskAWFIEs" role="3F10Kt">
          <property role="Vb096" value="fLwANPp/orange" />
        </node>
      </node>
      <node concept="2iRfu4" id="508e52RTjJT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RTZfm">
    <ref role="1XX52x" to="ge5j:508e52RTY3y" resolve="ConditionAnalog" />
    <node concept="3EZMnI" id="508e52RTZfo" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RTZfv" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTY3_" resolve="sensor" />
        <node concept="1sVBvm" id="508e52RTZfx" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RTZfF" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="7QYskAWAqjd" role="3F10Kt">
              <property role="Vb096" value="fLwANPs/magenta" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="508e52RTZfr" role="2iSdaV" />
      <node concept="3F0A7n" id="508e52RTZfN" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTZfk" resolve="comparator" />
      </node>
      <node concept="3F0A7n" id="508e52RU3A3" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTZg6" resolve="value" />
        <node concept="VechU" id="7QYskAWCSRX" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="508e52RU3Aa">
    <ref role="1XX52x" to="ge5j:508e52RU3_U" resolve="ConditionDigital" />
    <node concept="3EZMnI" id="508e52RU3Ac" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RU3Aj" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RU3A1" resolve="sensor" />
        <node concept="1sVBvm" id="508e52RU3Al" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RU3As" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="7QYskAWAqjf" role="3F10Kt">
              <property role="Vb096" value="fLwANPs/magenta" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RU3AE" role="3EZMnx">
        <property role="3F0ifm" value="==" />
      </node>
      <node concept="3F0A7n" id="508e52RU3AQ" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RU3_Z" resolve="signal" />
        <node concept="VechU" id="7QYskAWCSRZ" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="2iRfu4" id="508e52RU3Af" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RUbFU">
    <ref role="1XX52x" to="ge5j:508e52RTjbB" resolve="Transition" />
    <node concept="3EZMnI" id="508e52RUbGp" role="2wV5jI">
      <node concept="3EZMnI" id="508e52RUUBo" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUUBq" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52RUUBB" role="3EZMnx">
          <property role="3F0ifm" value="to" />
          <node concept="VechU" id="7QYskAWDGZP" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="1iCGBv" id="508e52RUUBL" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:2JnYSShNRF1" resolve="state" />
          <node concept="1sVBvm" id="508e52RUUBN" role="1sWHZn">
            <node concept="3F0A7n" id="508e52RUUBV" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="7QYskAWAqEb" role="3F10Kt">
                <property role="Vb096" value="fLwANPs/magenta" />
                <node concept="1iSF2X" id="7QYskAWE7iH" role="VblUZ">
                  <property role="1iTho6" value="c3af56" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="508e52RUUBt" role="2iSdaV" />
        <node concept="3F0ifn" id="508e52RVsdt" role="3EZMnx">
          <property role="3F0ifm" value="if" />
          <node concept="VechU" id="7QYskAWDGZR" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F2HdR" id="508e52RVsex" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RUbFQ" resolve="conditions" />
          <node concept="l2Vlx" id="7QYskAWy8k9" role="2czzBx" />
          <node concept="VPM3Z" id="508e52RVse_" role="3F10Kt" />
          <node concept="ljvvj" id="7QYskAWu7Q$" role="3F10Kt" />
          <node concept="3F0ifn" id="508e52RVseI" role="2czzBI">
            <property role="3F0ifm" value="[no conditions defined]" />
            <node concept="VechU" id="7QYskAWAqiW" role="3F10Kt">
              <property role="Vb096" value="fLJRk5_/gray" />
            </node>
            <node concept="Vb9p2" id="7QYskAWAqiX" role="3F10Kt" />
          </node>
          <node concept="2o9xnK" id="7QYskAWoCTu" role="2gpyvW">
            <node concept="3clFbS" id="7QYskAWoCTv" role="2VODD2">
              <node concept="3cpWs6" id="7QYskAWoCY8" role="3cqZAp">
                <node concept="Xl_RD" id="7QYskAWoCYA" role="3cqZAk">
                  <property role="Xl_RC" value=" and" />
                </node>
              </node>
            </node>
          </node>
          <node concept="tppnM" id="7QYskAWrLmy" role="sWeuL">
            <node concept="ljvvj" id="7QYskAWu7Qv" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VechU" id="7QYskAWFkSv" role="3F10Kt">
              <property role="Vb096" value="fLwANPp/orange" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="508e52RUUB1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1QS_xBSvF0S">
    <ref role="1XX52x" to="ge5j:O0bPWK9L_B" resolve="ActionLCDDigitalReaderText" />
    <node concept="3EZMnI" id="1QS_xBSvF0U" role="2wV5jI">
      <node concept="3EZMnI" id="1QS_xBSvF14" role="3EZMnx">
        <node concept="VPM3Z" id="1QS_xBSvF16" role="3F10Kt" />
        <node concept="3F0ifn" id="1QS_xBSvF1Q" role="3EZMnx">
          <property role="3F0ifm" value="print" />
          <node concept="VechU" id="7QYskAWFIEe" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="1iCGBv" id="1QS_xBSvF1w" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:O0bPWK9L_M" resolve="brick" />
          <node concept="1sVBvm" id="1QS_xBSvF1y" role="1sWHZn">
            <node concept="3F0A7n" id="1QS_xBSvF1M" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="7QYskAWAqj7" role="3F10Kt">
                <property role="Vb096" value="fLwANPs/magenta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="1QS_xBSvF2n" role="3EZMnx">
          <property role="3F0ifm" value="value on" />
          <node concept="VechU" id="7QYskAWFIEg" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="1iCGBv" id="1QS_xBSvF2K" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7Mto9RJ57Ue" resolve="target" />
          <node concept="1sVBvm" id="1QS_xBSvF2M" role="1sWHZn">
            <node concept="3F0A7n" id="1QS_xBSvF3a" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="7Mto9RIZgni" role="3EZMnx">
          <property role="3F0ifm" value="row n°" />
          <node concept="VechU" id="7QYskAWFIEi" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="7Mto9RIZgwF" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
          <node concept="VechU" id="7QYskAWCSRR" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="1QS_xBSvF19" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="1QS_xBSvF0X" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7Mto9RJ0fIb">
    <ref role="1XX52x" to="ge5j:O0bPWK9L_$" resolve="ActionLCDAnalogReaderText" />
    <node concept="3EZMnI" id="7Mto9RJ0fId" role="2wV5jI">
      <node concept="3EZMnI" id="7Mto9RJ0fIe" role="3EZMnx">
        <node concept="VPM3Z" id="7Mto9RJ0fIf" role="3F10Kt" />
        <node concept="3F0ifn" id="7Mto9RJ0fIg" role="3EZMnx">
          <property role="3F0ifm" value="print" />
          <node concept="VechU" id="7QYskAWFIE8" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="1iCGBv" id="7Mto9RJ0fIh" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7Mto9RJ0fIU" resolve="brick" />
          <node concept="1sVBvm" id="7Mto9RJ0fIi" role="1sWHZn">
            <node concept="3F0A7n" id="7Mto9RJ0fIj" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="7QYskAWAqj5" role="3F10Kt">
                <property role="Vb096" value="fLwANPs/magenta" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="7Mto9RJ0fIk" role="3EZMnx">
          <property role="3F0ifm" value="value on" />
          <node concept="VechU" id="7QYskAWFIEa" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="1iCGBv" id="7Mto9RJ0fIl" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7Mto9RJ57Ue" resolve="target" />
          <node concept="1sVBvm" id="7Mto9RJ0fIm" role="1sWHZn">
            <node concept="3F0A7n" id="7Mto9RJ0fIn" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="7Mto9RJ0fIo" role="3EZMnx">
          <property role="3F0ifm" value="row n°" />
          <node concept="VechU" id="7QYskAWFIEc" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="7Mto9RJ0fIp" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7Mto9RJ57Ub" resolve="rowToDisplay" />
          <node concept="VechU" id="7QYskAWCSRP" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="7Mto9RJ0fIq" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="7Mto9RJ0fIr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LAVG$wRSgP">
    <ref role="1XX52x" to="ge5j:6LAVG$wRSgK" resolve="StateError" />
    <node concept="3EZMnI" id="6LAVG$wRShb" role="2wV5jI">
      <node concept="3EZMnI" id="6LAVG$wRShp" role="3EZMnx">
        <node concept="VPM3Z" id="6LAVG$wRShr" role="3F10Kt" />
        <node concept="3F0ifn" id="7QYskAWA0t9" role="3EZMnx">
          <property role="3F0ifm" value="Error State" />
          <node concept="VechU" id="7QYskAWDGV0" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="6LAVG$wRSh_" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWCuZg" role="3F10Kt">
            <property role="Vb096" value="fLwANPq/yellow" />
            <node concept="1iSF2X" id="7QYskAWCuZh" role="VblUZ">
              <property role="1iTho6" value="d8b106" />
            </node>
          </node>
          <node concept="1liFee" id="7QYskAWEV6p" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="Vb9p2" id="7QYskAWEV6z" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="6LAVG$wRShF" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3XFhqQ" id="6LAVG$wRShN" role="3EZMnx" />
        <node concept="3XFhqQ" id="6LAVG$wRShX" role="3EZMnx" />
        <node concept="3XFhqQ" id="6LAVG$wRSi9" role="3EZMnx" />
        <node concept="3F0ifn" id="6LAVG$wRSin" role="3EZMnx">
          <property role="3F0ifm" value="error code:" />
          <node concept="VechU" id="7QYskAWDGV2" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="6LAVG$wRSiB" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:6LAVG$wRSgN" resolve="code" />
          <node concept="VechU" id="7QYskAWCTae" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="l2Vlx" id="6LAVG$wRShu" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="6LAVG$wRShl" role="3EZMnx" />
      <node concept="2iRkQZ" id="6LAVG$wRShe" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2JnYSShP1DZ">
    <ref role="1XX52x" to="ge5j:2JnYSShP1DU" resolve="TransitionTime" />
    <node concept="3EZMnI" id="2JnYSShP1E2" role="2wV5jI">
      <node concept="VPM3Z" id="2JnYSShP1E3" role="3F10Kt" />
      <node concept="3F0ifn" id="2JnYSShP1E4" role="3EZMnx">
        <property role="3F0ifm" value="to" />
        <node concept="VechU" id="7QYskAWFJ2d" role="3F10Kt">
          <property role="Vb096" value="fLwANPp/orange" />
        </node>
      </node>
      <node concept="1iCGBv" id="2JnYSShP1E5" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:2JnYSShNRF1" resolve="state" />
        <node concept="1sVBvm" id="2JnYSShP1E6" role="1sWHZn">
          <node concept="3F0A7n" id="2JnYSShP1E7" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="7QYskAWAqEd" role="3F10Kt">
              <property role="Vb096" value="fLwANPs/magenta" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="2JnYSShP1E8" role="2iSdaV" />
      <node concept="3F0ifn" id="2JnYSShP1E9" role="3EZMnx">
        <property role="3F0ifm" value="after" />
        <node concept="VechU" id="7QYskAWFJ2f" role="3F10Kt">
          <property role="Vb096" value="fLwANPp/orange" />
        </node>
      </node>
      <node concept="3F0A7n" id="2JnYSShP1F8" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:2JnYSShP1DX" resolve="timeBeforeTransition" />
        <node concept="VechU" id="7QYskAWCTag" role="3F10Kt">
          <property role="Vb096" value="fLwANPu/blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="2JnYSShP1Fo" role="3EZMnx">
        <property role="3F0ifm" value="ms" />
        <node concept="VechU" id="7QYskAWFJ2h" role="3F10Kt">
          <property role="Vb096" value="fLwANPp/orange" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7W0bUzHUPEj">
    <ref role="1XX52x" to="ge5j:7W0bUzHUPA1" resolve="Task" />
    <node concept="3EZMnI" id="7W0bUzHUPEl" role="2wV5jI">
      <node concept="3EZMnI" id="7W0bUzHW35d" role="3EZMnx">
        <node concept="VPM3Z" id="7W0bUzHW35f" role="3F10Kt" />
        <node concept="3F0ifn" id="7W0bUzHW35J" role="3EZMnx">
          <property role="3F0ifm" value="Task" />
          <node concept="VechU" id="7QYskAWzxYm" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="7W0bUzHW35x" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="7QYskAWBFx4" role="3F10Kt">
            <property role="Vb096" value="fLwANPq/yellow" />
            <node concept="1iSF2X" id="7QYskAWBFx5" role="VblUZ">
              <property role="1iTho6" value="d8b106" />
            </node>
          </node>
          <node concept="Vb9p2" id="7QYskAWEUO5" role="3F10Kt">
            <property role="Vbekb" value="g1_k_vY/BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="7W0bUzHW35B" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="l2Vlx" id="7W0bUzHW35i" role="2iSdaV" />
        <node concept="3XFhqQ" id="3_0fBbHUuxE" role="3EZMnx" />
        <node concept="3XFhqQ" id="3_0fBbHUuyb" role="3EZMnx" />
        <node concept="3XFhqQ" id="7QYskAWApVh" role="3EZMnx" />
        <node concept="3F0ifn" id="3_0fBbHUuyx" role="3EZMnx">
          <property role="3F0ifm" value="run every" />
          <node concept="VechU" id="7QYskAWzxYr" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
        <node concept="3F0A7n" id="3_0fBbHUuyL" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:3_0fBbHUuxz" resolve="period" />
          <node concept="VechU" id="7QYskAWzxY_" role="3F10Kt">
            <property role="Vb096" value="fLwANPu/blue" />
          </node>
        </node>
        <node concept="3F0ifn" id="3_0fBbHUuz3" role="3EZMnx">
          <property role="3F0ifm" value="ms" />
          <node concept="VechU" id="7QYskAW_ApS" role="3F10Kt">
            <property role="Vb096" value="fLwANPp/orange" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="7W0bUzHUPEs" role="3EZMnx">
        <node concept="VPM3Z" id="7W0bUzHUPEu" role="3F10Kt" />
        <node concept="3XFhqQ" id="7W0bUzHUPEW" role="3EZMnx" />
        <node concept="3F2HdR" id="7W0bUzHUPF0" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:7W0bUzHUPA4" resolve="states" />
          <node concept="2iRkQZ" id="7W0bUzHUPF3" role="2czzBx" />
          <node concept="VPM3Z" id="7W0bUzHUPF4" role="3F10Kt" />
          <node concept="3F0ifn" id="7W0bUzHUPFb" role="2czzBI">
            <property role="3F0ifm" value="[no states defined]" />
            <node concept="VechU" id="7QYskAWAqe7" role="3F10Kt">
              <property role="Vb096" value="fLJRk5_/gray" />
            </node>
            <node concept="Vb9p2" id="7QYskAWAqe8" role="3F10Kt" />
          </node>
        </node>
        <node concept="l2Vlx" id="7W0bUzHUPEx" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="7W0bUzHUPFo" role="3EZMnx" />
      <node concept="2iRkQZ" id="7W0bUzHUPEo" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="7QYskAWzVUU">
    <property role="TrG5h" value="Styles" />
    <node concept="14StLt" id="7QYskAWzVUV" role="V601i">
      <property role="TrG5h" value="GreenStyle" />
      <node concept="VechU" id="7QYskAWzVUZ" role="3F10Kt">
        <property role="Vb096" value="fLwANPr/green" />
      </node>
    </node>
    <node concept="14StLt" id="7QYskAWzVV6" role="V601i">
      <property role="TrG5h" value="GreyStyle" />
      <node concept="VechU" id="7QYskAWzVVd" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
    </node>
  </node>
</model>

