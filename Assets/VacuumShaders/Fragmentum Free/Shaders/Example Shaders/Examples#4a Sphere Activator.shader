// Compiled shader for PC, Mac & Linux Standalone, uncompressed size: 253.7KB

Shader "VacuumShaders/Fragmentum/Examples/4a Sphere Activator" {
Properties {
[HideInInspector]  _Color ("", Color) = (1,1,1,1)
[HideInInspector]  _MainTex ("", 2D) = "white" {}
[HideInInspector]  V_FR_Fragmentum ("", Range(0,1)) = 0.5
[HideInInspector]  V_FR_DisplaceAmount ("", Float) = 1
[HideInInspector]  V_FR_RotateSpeed ("", Float) = 1
[HideInInspector]  V_FR_DisplaceDirectionObjectPosition ("", Vector) = (0,1,0,0)
[HideInInspector]  V_FR_FragmentsScale ("", Float) = 1
[HideInInspector]  V_FR_DistanceToActivator ("", Float) = 0
[HideInInspector]  V_FR_FragTexture ("", 2D) = "white" {}
[HideInInspector]  V_FR_FragTexturePower ("", Range(1,10)) = 1
[HideInInspector]  V_FR_RandomizeFragmentum ("", Float) = 0
[HideInInspector]  V_FR_RandomizeFragmentsScale ("", Float) = 0
[HideInInspector]  V_FR_RandomizeDistanceToActivator ("", Float) = 0
[HideInInspector]  V_FR_RandomizeInitialRotation ("", Float) = 0
[HideInInspector]  V_FR_RandomizeRotationSpeed ("", Float) = 0
[HideInInspector]  V_FR_RandomizeRotationTimeOffset ("", Float) = 0 
[HideInInspector]  V_FR_RandomizeDisplaceDirection ("", Range(0,1)) = 0
[HideInInspector]  V_FR_RandomizeDisplaceAmount ("", Float) = 0
}
SubShader { 
 LOD 200
 Tags { "QUEUE"="Geometry" "RenderType"="Opaque" "FragmentumTag"="Fragmentum/SM2/One Directional Light/Diffuse" }

//Free V_FR_FRAGMENTS_SCALE
//Free V_FR_ACTIVATOR_SPHERE
//Free V_FR_MAIN_COLOR

//DO NOT MODIFY !!! The End

 // Stats for Vertex shader:
 //       d3d11 : 25 avg math (9..42)
 //    d3d11_9x : 25 avg math (9..42)
 //        d3d9 : 42 avg math (10..74)
 //      opengl : 36 avg math (10..63)
 // Stats for Fragment shader:
 //       d3d11 : 7 avg math (4..14), 1 avg texture (1..2)
 //    d3d11_9x : 7 avg math (4..14), 1 avg texture (1..2)
 //        d3d9 : 9 avg math (6..16), 1 avg texture (1..2)
 //      opengl : 9 avg math (6..16), 1 avg texture (1..2)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "QUEUE"="Geometry" "RenderType"="Opaque" "FragmentumTag"="Fragmentum/SM2/One Directional Light/Diffuse" }
  Cull Off
Program "vp" {
SubProgram "opengl " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[12] = { program.local[0],
		state.matrix.mvp,
		program.local[5..11] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 10 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
mul r0.xyz, v2, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedenfhnacnpalchniokiflalgphjbhkaffabaaaaaaheadaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefcaiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaa
adaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaacaaaaaaogikcaaa
aaaaaaaaacaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedldfkpcfkagicblgclcpdpfchhhpfhdhhabaaaaaaoeaeaaaaaeaaaaaa
daaaaaaajmabaaaakmadaaaafmaeaaaaebgpgodjgeabaaaageabaaaaaaacpopp
aaabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaacaa
abaaabaaaaaaaaaaabaaaaaaabaaacaaaaaaaaaaacaaaaaaaeaaadaaaaaaaaaa
acaaamaaadaaahaaaaaaaaaaacaabeaaabaaakaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaadaaaaahia
acaaoejaakaappkaafaaaaadabaaahiaaaaaffiaaiaaoekaaeaaaaaeaaaaalia
ahaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaajaaoekaaaaakkiaaaaapeia
afaaaaadaaaaapiaaaaaffjaaeaaoekaaeaaaaaeaaaaapiaadaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaafaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
agaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaacaaoekappppaaaafdeieefc
aiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaai
pcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaabaaaaaaegiacaaaaaaaaaaaacaaaaaaogikcaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaaacaaaaaabeaaaaaa
diaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaa
dcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaa
egaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaa
kgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaa
abaaaaaaaaaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[13] = { program.local[0],
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 11 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
mul r0.xyz, v3, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedaobghdmfkpfmkjjlllnlhghfcoocpnkpabaaaaaaoiadaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcemacaaaaeaaaabaa
jdaaaaaafjaaaaaeegiocaaaaaaaaaaaaeaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
acaaaaaaogikcaaaaaaaaaaaacaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaadaaaaaakgiocaaaaaaaaaaaadaaaaaadiaaaaai
hcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaai
hcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaak
lcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaa
abaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaa
aaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaa
aaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedgnhiaijgalohgfdphmimidcliegechpdabaaaaaahiafaaaaaeaaaaaa
daaaaaaalmabaaaabaaeaaaaniaeaaaaebgpgodjieabaaaaieabaaaaaaacpopp
caabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaacaa
acaaabaaaaaaaaaaabaaaaaaabaaadaaaaaaaaaaacaaaaaaaeaaaeaaaaaaaaaa
acaaamaaadaaaiaaaaaaaaaaacaabeaaabaaalaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoeka
abaaookaafaaaaadaaaaahiaadaaoejaalaappkaafaaaaadabaaahiaaaaaffia
ajaaoekaaeaaaaaeaaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
akaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabekaacaaleka
afaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
ahaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
emacaaaaeaaaabaajdaaaaaafjaaaaaeegiocaaaaaaaaaaaaeaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaacaaaaaaogikcaaaaaaaaaaaacaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaadaaaaaakgiocaaaaaaaaaaa
adaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaa
beaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaa
aaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaa
aoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[13] = { program.local[0],
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 11 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
mul r0.xyz, v3, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedaobghdmfkpfmkjjlllnlhghfcoocpnkpabaaaaaaoiadaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcemacaaaaeaaaabaa
jdaaaaaafjaaaaaeegiocaaaaaaaaaaaaeaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
acaaaaaaogikcaaaaaaaaaaaacaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaadaaaaaakgiocaaaaaaaaaaaadaaaaaadiaaaaai
hcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaai
hcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaak
lcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaa
abaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaa
aaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaa
aaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedgnhiaijgalohgfdphmimidcliegechpdabaaaaaahiafaaaaaeaaaaaa
daaaaaaalmabaaaabaaeaaaaniaeaaaaebgpgodjieabaaaaieabaaaaaaacpopp
caabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaacaa
acaaabaaaaaaaaaaabaaaaaaabaaadaaaaaaaaaaacaaaaaaaeaaaeaaaaaaaaaa
acaaamaaadaaaiaaaaaaaaaaacaabeaaabaaalaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoeka
abaaookaafaaaaadaaaaahiaadaaoejaalaappkaafaaaaadabaaahiaaaaaffia
ajaaoekaaeaaaaaeaaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
akaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabekaacaaleka
afaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
ahaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
emacaaaaeaaaabaajdaaaaaafjaaaaaeegiocaaaaaaaaaaaaeaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaacaaaaaaogikcaaaaaaaaaaaacaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaadaaaaaakgiocaaaaaaaaaaa
adaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaa
beaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaa
aaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaa
aoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[13] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
END
# 15 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"vs_2_0
def c13, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c13.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v2, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedhiginbdchlkmaoadimagkahkffgblfacabaaaaaadeaeaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
agaaaaaaogikcaaaaaaaaaaaagaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefieceddodpfbeiccpcadjkhmcfdcigohgemakgabaaaaaaaeagaaaaaeaaaaaa
daaaaaaapmabaaaaleaeaaaageafaaaaebgpgodjmeabaaaameabaaaaaaacpopp
feabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaagaa
abaaabaaaaaaaaaaabaaafaaabaaacaaaaaaaaaaacaaaaaaabaaadaaaaaaaaaa
adaaaaaaaeaaaeaaaaaaaaaaadaaamaaadaaaiaaaaaaaaaaadaabeaaabaaalaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafamaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaad
aaaaahiaacaaoejaalaappkaafaaaaadabaaahiaaaaaffiaajaaoekaaeaaaaae
aaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaakaaoekaaaaakkia
aaaapeiaafaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaahaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaamaaaaka
afaaaaadabaaaiiaabaaffiaacaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
agaaaaaaogikcaaaaaaaaaaaagaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[14] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..13] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 16 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"vs_2_0
def c14, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c14.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v3, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedmolikjehibnbeonfddojenacheblbkefabaaaaaakiaeaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcpeacaaaaeaaaabaalnaaaaaafjaaaaae
egiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaagaaaaaaogikcaaaaaaaaaaaagaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaahaaaaaakgiocaaaaaaaaaaa
ahaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaaadaaaaaapgipcaaaadaaaaaa
beaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaa
abaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaa
aoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaa
kgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaa
abaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedlkhohinfjklfbpmcjfnjgdeedpdbgdjgabaaaaaajiagaaaaaeaaaaaa
daaaaaaabmacaaaabiafaaaaoaafaaaaebgpgodjoeabaaaaoeabaaaaaaacpopp
heabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaagaa
acaaabaaaaaaaaaaabaaafaaabaaadaaaaaaaaaaacaaaaaaabaaaeaaaaaaaaaa
adaaaaaaaeaaafaaaaaaaaaaadaaamaaadaaajaaaaaaaaaaadaabeaaabaaamaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafanaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoeja
abaaoekaabaaookaafaaaaadaaaaahiaadaaoejaamaappkaafaaaaadabaaahia
aaaaffiaakaaoekaaeaaaaaeaaaaaliaajaakekaaaaaaaiaabaakeiaaeaaaaae
abaaahoaalaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabeka
acaalekaafaaaaadaaaaapiaaaaaffjaagaaoekaaeaaaaaeaaaaapiaafaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaahaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaaiaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaanaaaaka
afaaaaadabaaaiiaabaaffiaadaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaaeaaoekappppaaaafdeieefc
peacaaaaeaaaabaalnaaaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaaogikcaaa
aaaaaaaaagaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaa
aaaaaaaaahaaaaaakgiocaaaaaaaaaaaahaaaaaadiaaaaaihcaabaaaabaaaaaa
egbcbaaaadaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaa
fgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaa
egiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaa
abaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaak
hcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadp
aaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaa
abaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaa
aeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
kbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
ljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeo
aafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaakl
epfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaa
keaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahaiaaaakeaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[14] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..13] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 16 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"vs_2_0
def c14, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c14.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v3, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedmolikjehibnbeonfddojenacheblbkefabaaaaaakiaeaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcpeacaaaaeaaaabaalnaaaaaafjaaaaae
egiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaagaaaaaaogikcaaaaaaaaaaaagaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaahaaaaaakgiocaaaaaaaaaaa
ahaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaaadaaaaaapgipcaaaadaaaaaa
beaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaa
abaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaa
aoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaa
kgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaa
abaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedlkhohinfjklfbpmcjfnjgdeedpdbgdjgabaaaaaajiagaaaaaeaaaaaa
daaaaaaabmacaaaabiafaaaaoaafaaaaebgpgodjoeabaaaaoeabaaaaaaacpopp
heabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaagaa
acaaabaaaaaaaaaaabaaafaaabaaadaaaaaaaaaaacaaaaaaabaaaeaaaaaaaaaa
adaaaaaaaeaaafaaaaaaaaaaadaaamaaadaaajaaaaaaaaaaadaabeaaabaaamaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafanaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoeja
abaaoekaabaaookaafaaaaadaaaaahiaadaaoejaamaappkaafaaaaadabaaahia
aaaaffiaakaaoekaaeaaaaaeaaaaaliaajaakekaaaaaaaiaabaakeiaaeaaaaae
abaaahoaalaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabeka
acaalekaafaaaaadaaaaapiaaaaaffjaagaaoekaaeaaaaaeaaaaapiaafaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaahaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaaiaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaanaaaaka
afaaaaadabaaaiiaabaaffiaadaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaaeaaoekappppaaaafdeieefc
peacaaaaeaaaabaalnaaaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaaogikcaaa
aaaaaaaaagaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaa
aaaaaaaaahaaaaaakgiocaaaaaaaaaaaahaaaaaadiaaaaaihcaabaaaabaaaaaa
egbcbaaaadaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaa
fgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaa
egiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaa
abaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaak
hcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadp
aaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaa
abaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaa
aeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
kbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
ljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeo
aafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaakl
epfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaa
keaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahaiaaaakeaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[12] = { program.local[0],
		state.matrix.mvp,
		program.local[5..11] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 10 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
mul r0.xyz, v2, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedenfhnacnpalchniokiflalgphjbhkaffabaaaaaaheadaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefcaiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaa
adaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaacaaaaaaogikcaaa
aaaaaaaaacaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedldfkpcfkagicblgclcpdpfchhhpfhdhhabaaaaaaoeaeaaaaaeaaaaaa
daaaaaaajmabaaaakmadaaaafmaeaaaaebgpgodjgeabaaaageabaaaaaaacpopp
aaabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaacaa
abaaabaaaaaaaaaaabaaaaaaabaaacaaaaaaaaaaacaaaaaaaeaaadaaaaaaaaaa
acaaamaaadaaahaaaaaaaaaaacaabeaaabaaakaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaadaaaaahia
acaaoejaakaappkaafaaaaadabaaahiaaaaaffiaaiaaoekaaeaaaaaeaaaaalia
ahaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaajaaoekaaaaakkiaaaaapeia
afaaaaadaaaaapiaaaaaffjaaeaaoekaaeaaaaaeaaaaapiaadaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaafaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
agaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaacaaoekappppaaaafdeieefc
aiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaai
pcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaabaaaaaaegiacaaaaaaaaaaaacaaaaaaogikcaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaaacaaaaaabeaaaaaa
diaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaa
dcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaa
egaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaa
kgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaa
abaaaaaaaaaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[13] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
END
# 15 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"vs_2_0
def c13, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c13.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v2, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedhiginbdchlkmaoadimagkahkffgblfacabaaaaaadeaeaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
agaaaaaaogikcaaaaaaaaaaaagaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefieceddodpfbeiccpcadjkhmcfdcigohgemakgabaaaaaaaeagaaaaaeaaaaaa
daaaaaaapmabaaaaleaeaaaageafaaaaebgpgodjmeabaaaameabaaaaaaacpopp
feabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaagaa
abaaabaaaaaaaaaaabaaafaaabaaacaaaaaaaaaaacaaaaaaabaaadaaaaaaaaaa
adaaaaaaaeaaaeaaaaaaaaaaadaaamaaadaaaiaaaaaaaaaaadaabeaaabaaalaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafamaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaad
aaaaahiaacaaoejaalaappkaafaaaaadabaaahiaaaaaffiaajaaoekaaeaaaaae
aaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaakaaoekaaaaakkia
aaaapeiaafaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaahaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaamaaaaka
afaaaaadabaaaiiaabaaffiaacaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
agaaaaaaogikcaaaaaaaaaaaagaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 57 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Float 12 [V_FR_Fragmentum]
Float 13 [V_FR_DisplaceAmount]
Float 14 [V_FR_FragmentsScale]
Float 15 [V_FR_DistanceToActivator]
Vector 16 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[18] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..16],
		{ 20, -1 } };
TEMP R0;
TEMP R1;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[16];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[15].x;
MIN R0.z, R0.y, c[16].w;
MOV R0.x, c[16].w;
FLR R1.xyz, vertex.normal;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[16];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[16].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.x, R0.y, R0.w, R0;
MUL R0.y, R0.x, c[12].x;
MIN R0.y, R0, c[0].x;
MAX R0.y, R0, c[0];
ABS R0.z, R0.y;
MOV R0.w, c[10];
MOV R0.y, c[0].x;
MUL R0.w, R0, c[13].x;
ADD R0.y, -R0, c[14].x;
MAD R0.y, R0.z, R0, c[0].x;
MUL R0.w, R0, c[12].x;
MAX R1.w, R0.y, c[0].y;
MUL R0.w, R0, R0.x;
MOV R0.xyz, vertex.attrib[14];
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.w, vertex.attrib[14];
MUL R1.xyz, R1, c[0].z;
MAD R1.xyz, R1, R0.w, R0;
MOV R1.w, vertex.position;
FRC R0.xyz, vertex.normal;
MAD R0.xyz, R0, c[17].x, c[17].y;
MUL R0.xyz, R0, c[10].w;
DP4 result.position.w, R1, c[4];
DP4 result.position.z, R1, c[3];
DP4 result.position.y, R1, c[2];
DP4 result.position.x, R1, c[1];
FRC R1.xy, vertex.texcoord[0];
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
MUL R1.xy, R1, c[11];
DP3 result.texcoord[3].x, R0, c[5];
MUL R0.xy, R1, c[0].w;
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
END
# 57 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 68 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Float 11 [V_FR_Fragmentum]
Float 12 [V_FR_DisplaceAmount]
Float 13 [V_FR_FragmentsScale]
Float 14 [V_FR_DistanceToActivator]
Vector 15 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c16, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c17, 10.00000000, 20.00000000, -1.00000000, 0
mov r2.xyz, v3
mov r1.w, c16.y
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c15
dp3 r0.z, r1, r1
mov r0.w, c15
slt r0.x, c16, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c16.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
add r0.w, -r0.y, c16.y
add r0.z, r0, c14.x
mul r0.w, r0.z, r0
min r0.z, r0, c15.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c16.x, r0.x
sge r0.x, r0, c16
mul r0.x, r0, r0.y
abs r0.y, c15.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c15
slt r0.x, c16, r0
add r0.z, -r0.x, c16.y
mul r0.z, r0, r0.w
max r0.y, r0, c16.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c11.x
min r0.y, r0, c16
max r0.y, r0, c16.x
mov r0.w, c12.x
mov r0.z, c13.x
mul r0.w, c9, r0
mul r0.w, r0, c11.x
mul r1.w, r0, r0.x
add r0.z, c16, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c16
max r0.w, r0.y, c16.x
frc r1.xyz, v2
add r0.xyz, v2, -r1
add r2.xyz, v0, -r2
mad r2.xyz, r2, r0.w, v3
mul r0.xyz, r0, c16.w
mad r1.xyz, r1, c17.y, c17.z
mul r1.xyz, r1, c9.w
mad r0.xyz, r0, r1.w, r2
mov r0.w, v0
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c10
mul r0.xy, r0, c17.x
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 38 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedjcdggjlfeljfmibadicohndghibfabnlabaaaaaafmahaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefcpaafaaaaeaaaabaahmabaaaafjaaaaaeegiocaaaaaaaaaaa
aiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
acaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
ahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
elaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaajbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaa
bkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadbaaaaaiecaabaaa
aaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadhaaaaajbcaabaaa
aaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
ebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaakhcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaa
acaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaa
aaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaa
egiacaaaaaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaa
aceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaacaaaaaa
bkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaaaaaaaaa
egacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaa
acaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 38 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecednehghepgcckicdpidkmplpaomcleplcjabaaaaaahialaaaaaeaaaaaa
daaaaaaaeiaeaaaaeaakaaaapaakaaaaebgpgodjbaaeaaaabaaeaaaaaaacpopp
jeadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaacaa
abaaabaaaaaaaaaaaaaaaeaaabaaacaaaaaaaaaaaaaaagaaacaaadaaaaaaaaaa
abaaaaaaabaaafaaaaaaaaaaacaaaaaaaeaaagaaaaaaaaaaacaaamaaaeaaakaa
aaaaaaaaacaabeaaabaaaoaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafapaaapka
gpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaafbaaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabdaaaaacaaaaahia
acaaoejaaeaaaaaeabaaahiaaaaaoeiaapaaffkaapaakkkaacaaaaadaaaaahia
aaaaoeibacaaoejaafaaaaadaaaaahiaaaaaoeiaapaaaakaafaaaaadabaaahia
abaaoeiaaoaappkaafaaaaadacaaahiaabaaffiaalaaoekaaeaaaaaeabaaalia
akaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoaamaaoekaabaakkiaabaapeia
bdaaaaacabaaadiaabaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaac
abaaamiaabaaoekaaeaaaaaeaaaaadoaabaaoeiabaaaaakaabaaooiaafaaaaad
abaaahiaadaaffjaalaaoekaaeaaaaaeabaaahiaakaaoekaadaaaajaabaaoeia
aeaaaaaeabaaahiaamaaoekaadaakkjaabaaoeiaacaaaaadabaaahiaabaaoeia
anaaoekaacaaaaadabaaahiaabaaoeiaaeaaoekbaiaaaaadaaaaaiiaabaaoeia
abaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaacaaaaaiiaaaaappiaacaaaaad
aaaaaiiaaaaappiaadaaffkacdaaaaacabaaabiaaeaappkaacaaaaadabaaabia
aaaappiaabaaaaibakaaaaadaaaaaiiaaaaappiaaeaappkaacaaaaadaaaaaiia
aaaappibaeaappkaalaaaaadabaaabiaabaaaaiaapaappkaabaaaaacabaaamia
apaaoekaamaaaaadabaaaciaabaappiaaeaappkabcaaaaaeacaaabiaabaaffia
aaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaiaacaaaakaalaaaaadaaaaaiia
aaaappiaapaappkaakaaaaadaaaaaiiaaaaappiaapaakkkbacaaaaadabaaabia
abaakkiaadaaaakaaeaaaaaeaaaaaiiaaaaappiaabaaaaiaapaakkkbalaaaaad
aaaaaiiaaaaappiaapaappkaabaaaaacabaaahiaadaaoejaacaaaaadabaaahia
abaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeiaaaaappiaadaaoejaabaaaaac
aaaaaiiaaoaappkaafaaaaadaaaaaiiaaaaappiaacaaffkaafaaaaadaaaaaiia
aaaappiaacaaaakaafaaaaadaaaaaiiaacaaaaiaaaaappiaaeaaaaaeaaaaahia
aaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffiaahaaoekaaeaaaaae
abaaapiaagaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaaiaaoekaaaaakkia
abaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadma
aaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoa
afaaoekappppaaaafdeieefcpaafaaaaeaaaabaahmabaaaafjaaaaaeegiocaaa
aaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaa
acaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaa
fgbfbaaaadaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaa
aaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaa
apaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
aaaaaaaaahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaadeaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaa
aaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadbaaaaai
ecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadhaaaaaj
bcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaa
dicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaa
aaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialp
dcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaa
aaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaa
aaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaa
dcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaa
adaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaa
acaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaa
aaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaa
abaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaakhcaabaaa
abaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaaf
dcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaa
aaaaaaaaegiacaaaaaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaaegaabaaa
aaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaa
acaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaa
aaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaa
egiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaa
aaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab
ejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
jcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebem
aafeebeoehefeofeaaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaa
giaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_FragmentsScale]
Float 16 [V_FR_DistanceToActivator]
Vector 17 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[19] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..17],
		{ 20, -1 } };
TEMP R0;
TEMP R1;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[17];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[16].x;
MIN R0.z, R0.y, c[17].w;
MOV R0.x, c[17].w;
FLR R1.xyz, vertex.normal;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[17];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[17].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.x, R0.y, R0.w, R0;
MUL R0.y, R0.x, c[13].x;
MIN R0.y, R0, c[0].x;
MAX R0.y, R0, c[0];
ABS R0.z, R0.y;
MOV R0.w, c[10];
MOV R0.y, c[0].x;
MUL R0.w, R0, c[14].x;
ADD R0.y, -R0, c[15].x;
MAD R0.y, R0.z, R0, c[0].x;
MUL R0.w, R0, c[13].x;
MAX R1.w, R0.y, c[0].y;
MUL R0.w, R0, R0.x;
MOV R0.xyz, vertex.attrib[14];
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.w, vertex.attrib[14];
MUL R1.xyz, R1, c[0].z;
MAD R1.xyz, R1, R0.w, R0;
MOV R1.w, vertex.position;
FRC R0.xyz, vertex.normal;
MAD R0.xyz, R0, c[18].x, c[18].y;
MUL R0.xyz, R0, c[10].w;
DP4 result.position.w, R1, c[4];
DP4 result.position.z, R1, c[3];
DP4 result.position.y, R1, c[2];
DP4 result.position.x, R1, c[1];
FRC R1.xy, vertex.texcoord[0];
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
MUL R1.xy, R1, c[11];
DP3 result.texcoord[3].x, R0, c[5];
MUL R0.xy, R1, c[0].w;
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
END
# 58 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 69 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
Float 12 [V_FR_Fragmentum]
Float 13 [V_FR_DisplaceAmount]
Float 14 [V_FR_FragmentsScale]
Float 15 [V_FR_DistanceToActivator]
Vector 16 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c17, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c18, 10.00000000, 20.00000000, -1.00000000, 0
mov r2.xyz, v4
mov r1.w, c17.y
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c16
dp3 r0.z, r1, r1
mov r0.w, c16
slt r0.x, c17, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c17.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
add r0.w, -r0.y, c17.y
add r0.z, r0, c15.x
mul r0.w, r0.z, r0
min r0.z, r0, c16.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c17.x, r0.x
sge r0.x, r0, c17
mul r0.x, r0, r0.y
abs r0.y, c16.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c16
slt r0.x, c17, r0
add r0.z, -r0.x, c17.y
mul r0.z, r0, r0.w
max r0.y, r0, c17.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c12.x
min r0.y, r0, c17
max r0.y, r0, c17.x
mov r0.w, c13.x
mov r0.z, c14.x
mul r0.w, c9, r0
mul r0.w, r0, c12.x
mul r1.w, r0, r0.x
add r0.z, c17, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c17
max r0.w, r0.y, c17.x
frc r1.xyz, v3
add r0.xyz, v3, -r1
add r2.xyz, v0, -r2
mad r2.xyz, r2, r0.w, v4
mul r0.xyz, r0, c17.w
mad r1.xyz, r1, c18.y, c18.z
mul r1.xyz, r1, c9.w
mad r0.xyz, r0, r1.w, r2
mov r0.w, v0
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c10
mul r0.xy, r0, c18.x
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
Float 80 [V_FR_Fragmentum]
Float 84 [V_FR_DisplaceAmount]
Float 112 [V_FR_FragmentsScale]
Float 116 [V_FR_DistanceToActivator]
Vector 128 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedaplilmgnfhkinpgpllnillnipcpbgfbpabaaaaaanaahaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcdeagaaaaeaaaabaa
inabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaahaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaaiaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
afaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaaabeaaaaa
aaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
aeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaa
agbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaafaaaaaa
dkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaa
akiacaaaaaaaaaaaafaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akaabaaaabaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaak
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddk
aaaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaa
jgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaa
acaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaa
agaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
acaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
bkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaa
egaabaaaaaaaaaaaegiacaaaaaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaa
egaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaa
aaaaaaaaacaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaa
aaaaaaaaadaaaaaakgiocaaaaaaaaaaaadaaaaaabkaaaaafhcaabaaaaaaaaaaa
egbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaaaceaaaaa
aaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialp
aaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaaacaaaaaa
beaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaa
aaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaa
aoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
Float 80 [V_FR_Fragmentum]
Float 84 [V_FR_DisplaceAmount]
Float 112 [V_FR_FragmentsScale]
Float 116 [V_FR_DistanceToActivator]
Vector 128 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedgipjkmdjpdgjdhheoljabpldoijplofpabaaaaaaamamaaaaaeaaaaaa
daaaaaaagiaeaaaakeakaaaagmalaaaaebgpgodjdaaeaaaadaaeaaaaaaacpopp
leadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaacaa
acaaabaaaaaaaaaaaaaaafaaabaaadaaaaaaaaaaaaaaahaaacaaaeaaaaaaaaaa
abaaaaaaabaaagaaaaaaaaaaacaaaaaaaeaaahaaaaaaaaaaacaaamaaaeaaalaa
aaaaaaaaacaabeaaabaaapaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbaaaapka
gpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaafbbaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeabaaahiaaaaaoeiabaaaffka
baaakkkaacaaaaadaaaaahiaaaaaoeibadaaoejaafaaaaadaaaaahiaaaaaoeia
baaaaakaafaaaaadabaaahiaabaaoeiaapaappkaafaaaaadacaaahiaabaaffia
amaaoekaaeaaaaaeabaaaliaalaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoa
anaaoekaabaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaadabaaadia
abaaoeiaabaaoekaabaaaaacabaaamiaabaaoekaaeaaaaaeaaaaadoaabaaoeia
bbaaaakaabaaooiaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
abaaahiaaeaaffjaamaaoekaaeaaaaaeabaaahiaalaaoekaaeaaaajaabaaoeia
aeaaaaaeabaaahiaanaaoekaaeaakkjaabaaoeiaacaaaaadabaaahiaabaaoeia
aoaaoekaacaaaaadabaaahiaabaaoeiaafaaoekbaiaaaaadaaaaaiiaabaaoeia
abaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaacaaaaaiiaaaaappiaacaaaaad
aaaaaiiaaaaappiaaeaaffkacdaaaaacabaaabiaafaappkaacaaaaadabaaabia
aaaappiaabaaaaibakaaaaadaaaaaiiaaaaappiaafaappkaacaaaaadaaaaaiia
aaaappibafaappkaalaaaaadabaaabiaabaaaaiabaaappkaabaaaaacabaaamia
baaaoekaamaaaaadabaaaciaabaappiaafaappkabcaaaaaeacaaabiaabaaffia
aaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaiaadaaaakaalaaaaadaaaaaiia
aaaappiabaaappkaakaaaaadaaaaaiiaaaaappiabaaakkkbacaaaaadabaaabia
abaakkiaaeaaaakaaeaaaaaeaaaaaiiaaaaappiaabaaaaiabaaakkkbalaaaaad
aaaaaiiaaaaappiabaaappkaabaaaaacabaaahiaaeaaoejaacaaaaadabaaahia
abaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeiaaaaappiaaeaaoejaabaaaaac
aaaaaiiaapaappkaafaaaaadaaaaaiiaaaaappiaadaaffkaafaaaaadaaaaaiia
aaaappiaadaaaakaafaaaaadaaaaaiiaacaaaaiaaaaappiaaeaaaaaeaaaaahia
aaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffiaaiaaoekaaeaaaaae
abaaapiaahaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaakkia
abaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadma
aaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoa
agaaoekappppaaaafdeieefcdeagaaaaeaaaabaainabaaaafjaaaaaeegiocaaa
aaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaa
acaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaa
aeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaa
egiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaaiaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaahaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaaaaaaaaaaiaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaiambaaaaaaaaaaaaaaaiaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadbaaaaaiecaabaaaaaaaaaaa
abeaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadhaaaaajbcaabaaaaaaaaaaa
ckaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaafaaaaaaaaaaaaaiecaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaa
aaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaah
ccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaa
abaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaa
aaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaaj
bcaabaaaabaaaaaabkiacaaaaaaaaaaaafaaaaaadkiacaaaacaaaaaabeaaaaaa
diaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaafaaaaaa
diaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaaebaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaa
egbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaa
aaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaa
aaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaacaaaaaadcaaaaal
mccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaadaaaaaakgiocaaa
aaaaaaaaadaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaadaaaaaadcaaaaap
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaeb
aaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaa
aaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaa
dcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaa
egadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaa
doaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaa
apaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeo
ehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_FragmentsScale]
Float 16 [V_FR_DistanceToActivator]
Vector 17 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[19] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..17],
		{ 20, -1 } };
TEMP R0;
TEMP R1;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[17];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[16].x;
MIN R0.z, R0.y, c[17].w;
MOV R0.x, c[17].w;
FLR R1.xyz, vertex.normal;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[17];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[17].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.x, R0.y, R0.w, R0;
MUL R0.y, R0.x, c[13].x;
MIN R0.y, R0, c[0].x;
MAX R0.y, R0, c[0];
ABS R0.z, R0.y;
MOV R0.w, c[10];
MOV R0.y, c[0].x;
MUL R0.w, R0, c[14].x;
ADD R0.y, -R0, c[15].x;
MAD R0.y, R0.z, R0, c[0].x;
MUL R0.w, R0, c[13].x;
MAX R1.w, R0.y, c[0].y;
MUL R0.w, R0, R0.x;
MOV R0.xyz, vertex.attrib[14];
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.w, vertex.attrib[14];
MUL R1.xyz, R1, c[0].z;
MAD R1.xyz, R1, R0.w, R0;
MOV R1.w, vertex.position;
FRC R0.xyz, vertex.normal;
MAD R0.xyz, R0, c[18].x, c[18].y;
MUL R0.xyz, R0, c[10].w;
DP4 result.position.w, R1, c[4];
DP4 result.position.z, R1, c[3];
DP4 result.position.y, R1, c[2];
DP4 result.position.x, R1, c[1];
FRC R1.xy, vertex.texcoord[0];
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
MUL R1.xy, R1, c[11];
DP3 result.texcoord[3].x, R0, c[5];
MUL R0.xy, R1, c[0].w;
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
END
# 58 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 69 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
Float 12 [V_FR_Fragmentum]
Float 13 [V_FR_DisplaceAmount]
Float 14 [V_FR_FragmentsScale]
Float 15 [V_FR_DistanceToActivator]
Vector 16 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c17, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c18, 10.00000000, 20.00000000, -1.00000000, 0
mov r2.xyz, v4
mov r1.w, c17.y
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c16
dp3 r0.z, r1, r1
mov r0.w, c16
slt r0.x, c17, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c17.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
add r0.w, -r0.y, c17.y
add r0.z, r0, c15.x
mul r0.w, r0.z, r0
min r0.z, r0, c16.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c17.x, r0.x
sge r0.x, r0, c17
mul r0.x, r0, r0.y
abs r0.y, c16.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c16
slt r0.x, c17, r0
add r0.z, -r0.x, c17.y
mul r0.z, r0, r0.w
max r0.y, r0, c17.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c12.x
min r0.y, r0, c17
max r0.y, r0, c17.x
mov r0.w, c13.x
mov r0.z, c14.x
mul r0.w, c9, r0
mul r0.w, r0, c12.x
mul r1.w, r0, r0.x
add r0.z, c17, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c17
max r0.w, r0.y, c17.x
frc r1.xyz, v3
add r0.xyz, v3, -r1
add r2.xyz, v0, -r2
mad r2.xyz, r2, r0.w, v4
mul r0.xyz, r0, c17.w
mad r1.xyz, r1, c18.y, c18.z
mul r1.xyz, r1, c9.w
mad r0.xyz, r0, r1.w, r2
mov r0.w, v0
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c10
mul r0.xy, r0, c18.x
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
Float 80 [V_FR_Fragmentum]
Float 84 [V_FR_DisplaceAmount]
Float 112 [V_FR_FragmentsScale]
Float 116 [V_FR_DistanceToActivator]
Vector 128 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedaplilmgnfhkinpgpllnillnipcpbgfbpabaaaaaanaahaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcdeagaaaaeaaaabaa
inabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaahaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaaiaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
afaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaaabeaaaaa
aaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
aeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaa
agbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaafaaaaaa
dkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaa
akiacaaaaaaaaaaaafaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akaabaaaabaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaak
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddk
aaaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaa
jgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaa
acaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaa
agaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
acaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
bkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaa
egaabaaaaaaaaaaaegiacaaaaaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaa
egaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaa
aaaaaaaaacaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaa
aaaaaaaaadaaaaaakgiocaaaaaaaaaaaadaaaaaabkaaaaafhcaabaaaaaaaaaaa
egbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaaaceaaaaa
aaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialp
aaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaaacaaaaaa
beaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaa
aaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaa
aoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 32 [_MainTex_ST]
Vector 48 [unity_LightmapST]
Float 80 [V_FR_Fragmentum]
Float 84 [V_FR_DisplaceAmount]
Float 112 [V_FR_FragmentsScale]
Float 116 [V_FR_DistanceToActivator]
Vector 128 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedgipjkmdjpdgjdhheoljabpldoijplofpabaaaaaaamamaaaaaeaaaaaa
daaaaaaagiaeaaaakeakaaaagmalaaaaebgpgodjdaaeaaaadaaeaaaaaaacpopp
leadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaacaa
acaaabaaaaaaaaaaaaaaafaaabaaadaaaaaaaaaaaaaaahaaacaaaeaaaaaaaaaa
abaaaaaaabaaagaaaaaaaaaaacaaaaaaaeaaahaaaaaaaaaaacaaamaaaeaaalaa
aaaaaaaaacaabeaaabaaapaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbaaaapka
gpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaafbbaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeabaaahiaaaaaoeiabaaaffka
baaakkkaacaaaaadaaaaahiaaaaaoeibadaaoejaafaaaaadaaaaahiaaaaaoeia
baaaaakaafaaaaadabaaahiaabaaoeiaapaappkaafaaaaadacaaahiaabaaffia
amaaoekaaeaaaaaeabaaaliaalaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoa
anaaoekaabaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaadabaaadia
abaaoeiaabaaoekaabaaaaacabaaamiaabaaoekaaeaaaaaeaaaaadoaabaaoeia
bbaaaakaabaaooiaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
abaaahiaaeaaffjaamaaoekaaeaaaaaeabaaahiaalaaoekaaeaaaajaabaaoeia
aeaaaaaeabaaahiaanaaoekaaeaakkjaabaaoeiaacaaaaadabaaahiaabaaoeia
aoaaoekaacaaaaadabaaahiaabaaoeiaafaaoekbaiaaaaadaaaaaiiaabaaoeia
abaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaacaaaaaiiaaaaappiaacaaaaad
aaaaaiiaaaaappiaaeaaffkacdaaaaacabaaabiaafaappkaacaaaaadabaaabia
aaaappiaabaaaaibakaaaaadaaaaaiiaaaaappiaafaappkaacaaaaadaaaaaiia
aaaappibafaappkaalaaaaadabaaabiaabaaaaiabaaappkaabaaaaacabaaamia
baaaoekaamaaaaadabaaaciaabaappiaafaappkabcaaaaaeacaaabiaabaaffia
aaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaiaadaaaakaalaaaaadaaaaaiia
aaaappiabaaappkaakaaaaadaaaaaiiaaaaappiabaaakkkbacaaaaadabaaabia
abaakkiaaeaaaakaaeaaaaaeaaaaaiiaaaaappiaabaaaaiabaaakkkbalaaaaad
aaaaaiiaaaaappiabaaappkaabaaaaacabaaahiaaeaaoejaacaaaaadabaaahia
abaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeiaaaaappiaaeaaoejaabaaaaac
aaaaaiiaapaappkaafaaaaadaaaaaiiaaaaappiaadaaffkaafaaaaadaaaaaiia
aaaappiaadaaaakaafaaaaadaaaaaiiaacaaaaiaaaaappiaaeaaaaaeaaaaahia
aaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffiaaiaaoekaaeaaaaae
abaaapiaahaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaakkia
abaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadma
aaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoa
agaaoekappppaaaafdeieefcdeagaaaaeaaaabaainabaaaafjaaaaaeegiocaaa
aaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaa
acaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaa
aeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaa
egiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaaiaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaahaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaaaaaaaaaaiaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaiambaaaaaaaaaaaaaaaiaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadbaaaaaiecaabaaaaaaaaaaa
abeaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadhaaaaajbcaabaaaaaaaaaaa
ckaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaafaaaaaaaaaaaaaiecaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaa
aaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaah
ccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaa
abaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaa
aaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaaj
bcaabaaaabaaaaaabkiacaaaaaaaaaaaafaaaaaadkiacaaaacaaaaaabeaaaaaa
diaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaafaaaaaa
diaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaaebaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaa
egbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaa
aaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaa
aaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaacaaaaaadcaaaaal
mccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaadaaaaaakgiocaaa
aaaaaaaaadaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaadaaaaaadcaaaaap
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaeb
aaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaa
aaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaa
dcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaa
egadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaa
doaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaa
apaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeo
ehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 62 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_FragmentsScale]
Float 16 [V_FR_DistanceToActivator]
Vector 17 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[19] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..17],
		{ 20, -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[17];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[16].x;
MIN R0.z, R0.y, c[17].w;
MOV R0.x, c[17].w;
MOV R1.xyz, vertex.attrib[14];
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[17];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[17].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.y, R0, R0.w, R0.x;
MUL R0.x, R0.y, c[13];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R0.z, R0.x;
MOV R0.w, c[11];
MOV R0.x, c[0];
MUL R0.w, R0, c[14].x;
ADD R0.x, -R0, c[15];
MAD R0.x, R0.z, R0, c[0];
MUL R0.w, R0, c[13].x;
MUL R0.w, R0, R0.y;
MAX R1.w, R0.x, c[0].y;
FLR R0.xyz, vertex.normal;
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.xyz, R0, c[0].z;
MAD R1.xyz, R0, R0.w, R1;
MOV R1.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R2.xyz, R0.xyww, c[18].z;
MUL R2.y, R2, c[9].x;
ADD result.texcoord[5].xy, R2, R2.z;
FRC R2.xyz, vertex.normal;
MAD R1.xyz, R2, c[18].x, c[18].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
END
# 62 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 73 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_FragmentsScale]
Float 16 [V_FR_DistanceToActivator]
Vector 17 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c18, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c19, 10.00000000, 20.00000000, -1.00000000, 0.50000000
mov r1.w, c18.y
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c17
dp3 r0.z, r1, r1
mov r0.w, c17
slt r0.x, c18, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c18.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.xyz, v3
add r0.w, -r0.y, c18.y
add r0.z, r0, c16.x
mul r0.w, r0.z, r0
min r0.z, r0, c17.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c18.x, r0.x
sge r0.x, r0, c18
mul r0.x, r0, r0.y
abs r0.y, c17.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c17
slt r0.x, c18, r0
add r0.z, -r0.x, c18.y
mul r0.z, r0, r0.w
max r0.y, r0, c18.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c13.x
min r0.y, r0, c18
max r0.y, r0, c18.x
mov r0.w, c14.x
mov r0.z, c15.x
mul r0.w, c11, r0
mul r0.w, r0, c13.x
mul r0.w, r0, r0.x
add r0.z, c18, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c18
max r1.w, r0.y, c18.x
frc r2.xyz, v2
add r0.xyz, v2, -r2
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v3
mul r0.xyz, r0, c18.w
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c19.w
mul r3.y, r3, c8.x
mad r1.xyz, r2, c19.y, c19.z
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c19.x
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedlhpfpgdgkjdmeonageplkoicoehdbclpabaaaaaabmaiaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
jiagaaaaeaaaabaakgabaaaafjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaac
adaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
adaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaa
aaaaaaaaakaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaa
aaaaaaaaalaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaia
mbaaaaaaaaaaaaaaalaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaa
dkiacaaaaaaaaaaaalaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaa
dkiacaaaaaaaaaaaalaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaa
bkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaaebaaaaafhcaabaaaabaaaaaa
egbcbaaaacaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaa
gpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaa
abaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaa
bkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaabaaaaaa
egaabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaadcaaaaandccabaaaabaaaaaa
egaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaa
aaaaaaaaagaaaaaabkaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadcaaaaap
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaeb
aaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaa
acaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaa
abaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaa
dcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaa
egadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaa
diaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaai
icaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaah
dccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedglmopfhiomccegmlhoomjdhglfegmohlabaaaaaaiaamaaaaaeaaaaaa
daaaaaaajaaeaaaadaalaaaaoaalaaaaebgpgodjfiaeaaaafiaeaaaaaaacpopp
naadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaagaa
abaaabaaaaaaaaaaaaaaaiaaabaaacaaaaaaaaaaaaaaakaaacaaadaaaaaaaaaa
abaaafaaabaaafaaaaaaaaaaacaaaaaaabaaagaaaaaaaaaaadaaaaaaaeaaahaa
aaaaaaaaadaaamaaaeaaalaaaaaaaaaaadaabeaaabaaapaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafbaaaapkagpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaaf
bbaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadia
adaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeabaaahiaaaaaoeiabaaaffka
baaakkkaacaaaaadaaaaahiaaaaaoeibacaaoejaafaaaaadaaaaahiaaaaaoeia
baaaaakaafaaaaadabaaahiaabaaoeiaapaappkaafaaaaadacaaahiaabaaffia
amaaoekaaeaaaaaeabaaaliaalaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoa
anaaoekaabaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaadabaaadia
abaaoeiaabaaoekaabaaaaacacaaabiabbaaaakaaeaaaaaeaaaaadoaabaaoeia
acaaaaiaabaaookaafaaaaadabaaahiaadaaffjaamaaoekaaeaaaaaeabaaahia
alaaoekaadaaaajaabaaoeiaaeaaaaaeabaaahiaanaaoekaadaakkjaabaaoeia
acaaaaadabaaahiaabaaoeiaaoaaoekaacaaaaadabaaahiaabaaoeiaaeaaoekb
aiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaac
aaaaaiiaaaaappiaacaaaaadaaaaaiiaaaaappiaadaaffkacdaaaaacabaaabia
aeaappkaacaaaaadabaaabiaaaaappiaabaaaaibakaaaaadaaaaaiiaaaaappia
aeaappkaacaaaaadaaaaaiiaaaaappibaeaappkaalaaaaadabaaabiaabaaaaia
baaappkaabaaaaacabaaamiabaaaoekaamaaaaadabaaaciaabaappiaaeaappka
bcaaaaaeacaaabiaabaaffiaaaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaia
acaaaakaalaaaaadaaaaaiiaaaaappiabaaappkaakaaaaadaaaaaiiaaaaappia
baaakkkbacaaaaadabaaabiaabaakkiaadaaaakaaeaaaaaeaaaaaiiaaaaappia
abaaaaiabaaakkkbalaaaaadaaaaaiiaaaaappiabaaappkaabaaaaacabaaahia
adaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeia
aaaappiaadaaoejaabaaaaacaaaaaiiaapaappkaafaaaaadaaaaaiiaaaaappia
acaaffkaafaaaaadaaaaaiiaaaaappiaacaaaakaafaaaaadaaaaaiiaacaaaaia
aaaappiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapia
aaaaffiaaiaaoekaaeaaaaaeabaaapiaahaaoekaaaaaaaiaabaaoeiaaeaaaaae
aaaaapiaajaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaappja
aaaaoeiaafaaaaadabaaahiaaaaapeiabbaaffkaafaaaaadabaaaiiaabaaffia
afaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappia
aaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeia
abaaaaacacaaahoaagaaoekappppaaaafdeieefcjiagaaaaeaaaabaakgabaaaa
fjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaa
fjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaadaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaalaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
aiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaakaaaaaaabeaaaaa
aaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
adaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaa
agbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaiaaaaaa
dkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaa
akiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akaabaaaabaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaak
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddk
aaaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaa
jgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaa
adaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaa
agaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
dgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaa
egbabaaaabaaaaaadiaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaa
aaaaaaaaagaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaa
aaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaa
kbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeo
aafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaakl
epfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
"
}
SubProgram "opengl " {
// Stats: 63 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_FragmentsScale]
Float 17 [V_FR_DistanceToActivator]
Vector 18 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[20] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..18],
		{ 20, -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[18];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[17].x;
MIN R0.z, R0.y, c[18].w;
MOV R0.x, c[18].w;
MOV R1.xyz, vertex.attrib[14];
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[18];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[18].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.y, R0, R0.w, R0.x;
MUL R0.x, R0.y, c[14];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R0.z, R0.x;
MOV R0.w, c[11];
MOV R0.x, c[0];
MUL R0.w, R0, c[15].x;
ADD R0.x, -R0, c[16];
MAD R0.x, R0.z, R0, c[0];
MUL R0.w, R0, c[14].x;
MUL R0.w, R0, R0.y;
MAX R1.w, R0.x, c[0].y;
FLR R0.xyz, vertex.normal;
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.xyz, R0, c[0].z;
MAD R1.xyz, R0, R0.w, R1;
MOV R1.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R2.xyz, R0.xyww, c[19].z;
MUL R2.y, R2, c[9].x;
ADD result.texcoord[5].xy, R2, R2.z;
FRC R2.xyz, vertex.normal;
MAD R1.xyz, R2, c[19].x, c[19].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 63 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 74 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_FragmentsScale]
Float 17 [V_FR_DistanceToActivator]
Vector 18 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c19, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c20, 10.00000000, 20.00000000, -1.00000000, 0.50000000
mov r1.w, c19.y
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c18
dp3 r0.z, r1, r1
mov r0.w, c18
slt r0.x, c19, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c19.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.xyz, v4
add r0.w, -r0.y, c19.y
add r0.z, r0, c17.x
mul r0.w, r0.z, r0
min r0.z, r0, c18.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c19.x, r0.x
sge r0.x, r0, c19
mul r0.x, r0, r0.y
abs r0.y, c18.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c18
slt r0.x, c19, r0
add r0.z, -r0.x, c19.y
mul r0.z, r0, r0.w
max r0.y, r0, c19.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c14.x
min r0.y, r0, c19
max r0.y, r0, c19.x
mov r0.w, c15.x
mov r0.z, c16.x
mul r0.w, c11, r0
mul r0.w, r0, c14.x
mul r0.w, r0, r0.x
add r0.z, c19, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c19
max r1.w, r0.y, c19.x
frc r2.xyz, v3
add r0.xyz, v3, -r2
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mul r0.xyz, r0, c19.w
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c20.w
mul r3.y, r3, c8.x
mad r1.xyz, r2, c20.y, c20.z
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c20.x
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 42 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
Float 144 [V_FR_Fragmentum]
Float 148 [V_FR_DisplaceAmount]
Float 176 [V_FR_FragmentsScale]
Float 180 [V_FR_DistanceToActivator]
Vector 192 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedgkjdmcjjnddijiggggjopokjmicegcmiabaaaaaajaaiaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcnmagaaaaeaaaabaalhabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaamaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaalaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaaaaaaaaaamaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaiambaaaaaaaaaaaaaaamaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadbaaaaaiecaabaaaaaaaaaaa
abeaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadhaaaaajbcaabaaaaaaaaaaa
ckaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaajaaaaaaaaaaaaaiecaabaaa
aaaaaaaaakiacaaaaaaaaaaaalaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaa
aaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaah
ccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaa
abaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaa
aaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaaj
bcaabaaaabaaaaaabkiacaaaaaaaaaaaajaaaaaadkiacaaaadaaaaaabeaaaaaa
diaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaajaaaaaa
diaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaaebaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaagaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaahaaaaaakgiocaaaaaaaaaaaahaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 42 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
Float 144 [V_FR_Fragmentum]
Float 148 [V_FR_DisplaceAmount]
Float 176 [V_FR_FragmentsScale]
Float 180 [V_FR_DistanceToActivator]
Vector 192 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedelhojlefebfhhbokaalckamdampgoinnabaaaaaabeanaaaaaeaaaaaa
daaaaaaalaaeaaaajealaaaafmamaaaaebgpgodjhiaeaaaahiaeaaaaaaacpopp
paadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaagaa
acaaabaaaaaaaaaaaaaaajaaabaaadaaaaaaaaaaaaaaalaaacaaaeaaaaaaaaaa
abaaafaaabaaagaaaaaaaaaaacaaaaaaabaaahaaaaaaaaaaadaaaaaaaeaaaiaa
aaaaaaaaadaaamaaaeaaamaaaaaaaaaaadaabeaaabaabaaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafbbaaapkagpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaaf
bcaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadia
adaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaae
abaaahiaaaaaoeiabbaaffkabbaakkkaacaaaaadaaaaahiaaaaaoeibadaaoeja
afaaaaadaaaaahiaaaaaoeiabbaaaakaafaaaaadabaaahiaabaaoeiabaaappka
afaaaaadacaaahiaabaaffiaanaaoekaaeaaaaaeabaaaliaamaakekaabaaaaia
acaakeiaaeaaaaaeabaaahoaaoaaoekaabaakkiaabaapeiabdaaaaacabaaadia
abaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaacacaaabiabcaaaaka
aeaaaaaeaaaaadoaabaaoeiaacaaaaiaabaaookaaeaaaaaeaaaaamoaacaabeja
acaabekaacaalekaafaaaaadabaaahiaaeaaffjaanaaoekaaeaaaaaeabaaahia
amaaoekaaeaaaajaabaaoeiaaeaaaaaeabaaahiaaoaaoekaaeaakkjaabaaoeia
acaaaaadabaaahiaabaaoeiaapaaoekaacaaaaadabaaahiaabaaoeiaafaaoekb
aiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaac
aaaaaiiaaaaappiaacaaaaadaaaaaiiaaaaappiaaeaaffkacdaaaaacabaaabia
afaappkaacaaaaadabaaabiaaaaappiaabaaaaibakaaaaadaaaaaiiaaaaappia
afaappkaacaaaaadaaaaaiiaaaaappibafaappkaalaaaaadabaaabiaabaaaaia
bbaappkaabaaaaacabaaamiabbaaoekaamaaaaadabaaaciaabaappiaafaappka
bcaaaaaeacaaabiaabaaffiaaaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaia
adaaaakaalaaaaadaaaaaiiaaaaappiabbaappkaakaaaaadaaaaaiiaaaaappia
bbaakkkbacaaaaadabaaabiaabaakkiaaeaaaakaaeaaaaaeaaaaaiiaaaaappia
abaaaaiabbaakkkbalaaaaadaaaaaiiaaaaappiabbaappkaabaaaaacabaaahia
aeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeia
aaaappiaaeaaoejaabaaaaacaaaaaiiabaaappkaafaaaaadaaaaaiiaaaaappia
adaaffkaafaaaaadaaaaaiiaaaaappiaadaaaakaafaaaaadaaaaaiiaacaaaaia
aaaappiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapia
aaaaffiaajaaoekaaeaaaaaeabaaapiaaiaaoekaaaaaaaiaabaaoeiaaeaaaaae
aaaaapiaakaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaappja
aaaaoeiaafaaaaadabaaahiaaaaapeiabcaaffkaafaaaaadabaaaiiaabaaffia
agaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappia
aaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeia
abaaaaacacaaahoaahaaoekappppaaaafdeieefcnmagaaaaeaaaabaalhabaaaa
fjaaaaaeegiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaa
fjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
amaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
elaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaalaaaaaaddaaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaaaaaaaaajbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaamaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaa
bkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadbaaaaaiecaabaaa
aaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadhaaaaajbcaabaaa
aaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaajaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaalaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaajaaaaaadkiacaaaadaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
ajaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
ebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaagaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaahaaaaaakgiocaaaaaaaaaaaahaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaa
ahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
laaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaa
ahaiaaaakeaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 63 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_FragmentsScale]
Float 17 [V_FR_DistanceToActivator]
Vector 18 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[20] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..18],
		{ 20, -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[18];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[17].x;
MIN R0.z, R0.y, c[18].w;
MOV R0.x, c[18].w;
MOV R1.xyz, vertex.attrib[14];
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[18];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[18].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.y, R0, R0.w, R0.x;
MUL R0.x, R0.y, c[14];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R0.z, R0.x;
MOV R0.w, c[11];
MOV R0.x, c[0];
MUL R0.w, R0, c[15].x;
ADD R0.x, -R0, c[16];
MAD R0.x, R0.z, R0, c[0];
MUL R0.w, R0, c[14].x;
MUL R0.w, R0, R0.y;
MAX R1.w, R0.x, c[0].y;
FLR R0.xyz, vertex.normal;
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.xyz, R0, c[0].z;
MAD R1.xyz, R0, R0.w, R1;
MOV R1.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R2.xyz, R0.xyww, c[19].z;
MUL R2.y, R2, c[9].x;
ADD result.texcoord[5].xy, R2, R2.z;
FRC R2.xyz, vertex.normal;
MAD R1.xyz, R2, c[19].x, c[19].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 63 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 74 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_FragmentsScale]
Float 17 [V_FR_DistanceToActivator]
Vector 18 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c19, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c20, 10.00000000, 20.00000000, -1.00000000, 0.50000000
mov r1.w, c19.y
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c18
dp3 r0.z, r1, r1
mov r0.w, c18
slt r0.x, c19, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c19.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.xyz, v4
add r0.w, -r0.y, c19.y
add r0.z, r0, c17.x
mul r0.w, r0.z, r0
min r0.z, r0, c18.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c19.x, r0.x
sge r0.x, r0, c19
mul r0.x, r0, r0.y
abs r0.y, c18.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c18
slt r0.x, c19, r0
add r0.z, -r0.x, c19.y
mul r0.z, r0, r0.w
max r0.y, r0, c19.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c14.x
min r0.y, r0, c19
max r0.y, r0, c19.x
mov r0.w, c15.x
mov r0.z, c16.x
mul r0.w, c11, r0
mul r0.w, r0, c14.x
mul r0.w, r0, r0.x
add r0.z, c19, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c19
max r1.w, r0.y, c19.x
frc r2.xyz, v3
add r0.xyz, v3, -r2
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mul r0.xyz, r0, c19.w
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c20.w
mul r3.y, r3, c8.x
mad r1.xyz, r2, c20.y, c20.z
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c20.x
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 42 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
Float 144 [V_FR_Fragmentum]
Float 148 [V_FR_DisplaceAmount]
Float 176 [V_FR_FragmentsScale]
Float 180 [V_FR_DistanceToActivator]
Vector 192 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedgkjdmcjjnddijiggggjopokjmicegcmiabaaaaaajaaiaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcnmagaaaaeaaaabaalhabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaamaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaalaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaaaaaaaaaamaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaiambaaaaaaaaaaaaaaamaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadbaaaaaiecaabaaaaaaaaaaa
abeaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadhaaaaajbcaabaaaaaaaaaaa
ckaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaajaaaaaaaaaaaaaiecaabaaa
aaaaaaaaakiacaaaaaaaaaaaalaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaa
aaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaah
ccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaa
abaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaa
aaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaaj
bcaabaaaabaaaaaabkiacaaaaaaaaaaaajaaaaaadkiacaaaadaaaaaabeaaaaaa
diaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaajaaaaaa
diaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaaebaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaagaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaahaaaaaakgiocaaaaaaaaaaaahaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 42 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 96 [_MainTex_ST]
Vector 112 [unity_LightmapST]
Float 144 [V_FR_Fragmentum]
Float 148 [V_FR_DisplaceAmount]
Float 176 [V_FR_FragmentsScale]
Float 180 [V_FR_DistanceToActivator]
Vector 192 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedelhojlefebfhhbokaalckamdampgoinnabaaaaaabeanaaaaaeaaaaaa
daaaaaaalaaeaaaajealaaaafmamaaaaebgpgodjhiaeaaaahiaeaaaaaaacpopp
paadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaagaa
acaaabaaaaaaaaaaaaaaajaaabaaadaaaaaaaaaaaaaaalaaacaaaeaaaaaaaaaa
abaaafaaabaaagaaaaaaaaaaacaaaaaaabaaahaaaaaaaaaaadaaaaaaaeaaaiaa
aaaaaaaaadaaamaaaeaaamaaaaaaaaaaadaabeaaabaabaaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafbbaaapkagpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaaf
bcaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadia
adaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaae
abaaahiaaaaaoeiabbaaffkabbaakkkaacaaaaadaaaaahiaaaaaoeibadaaoeja
afaaaaadaaaaahiaaaaaoeiabbaaaakaafaaaaadabaaahiaabaaoeiabaaappka
afaaaaadacaaahiaabaaffiaanaaoekaaeaaaaaeabaaaliaamaakekaabaaaaia
acaakeiaaeaaaaaeabaaahoaaoaaoekaabaakkiaabaapeiabdaaaaacabaaadia
abaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaacacaaabiabcaaaaka
aeaaaaaeaaaaadoaabaaoeiaacaaaaiaabaaookaaeaaaaaeaaaaamoaacaabeja
acaabekaacaalekaafaaaaadabaaahiaaeaaffjaanaaoekaaeaaaaaeabaaahia
amaaoekaaeaaaajaabaaoeiaaeaaaaaeabaaahiaaoaaoekaaeaakkjaabaaoeia
acaaaaadabaaahiaabaaoeiaapaaoekaacaaaaadabaaahiaabaaoeiaafaaoekb
aiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaac
aaaaaiiaaaaappiaacaaaaadaaaaaiiaaaaappiaaeaaffkacdaaaaacabaaabia
afaappkaacaaaaadabaaabiaaaaappiaabaaaaibakaaaaadaaaaaiiaaaaappia
afaappkaacaaaaadaaaaaiiaaaaappibafaappkaalaaaaadabaaabiaabaaaaia
bbaappkaabaaaaacabaaamiabbaaoekaamaaaaadabaaaciaabaappiaafaappka
bcaaaaaeacaaabiaabaaffiaaaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaia
adaaaakaalaaaaadaaaaaiiaaaaappiabbaappkaakaaaaadaaaaaiiaaaaappia
bbaakkkbacaaaaadabaaabiaabaakkiaaeaaaakaaeaaaaaeaaaaaiiaaaaappia
abaaaaiabbaakkkbalaaaaadaaaaaiiaaaaappiabbaappkaabaaaaacabaaahia
aeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeia
aaaappiaaeaaoejaabaaaaacaaaaaiiabaaappkaafaaaaadaaaaaiiaaaaappia
adaaffkaafaaaaadaaaaaiiaaaaappiaadaaaakaafaaaaadaaaaaiiaacaaaaia
aaaappiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapia
aaaaffiaajaaoekaaeaaaaaeabaaapiaaiaaoekaaaaaaaiaabaaoeiaaeaaaaae
aaaaapiaakaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaappja
aaaaoeiaafaaaaadabaaahiaaaaapeiabcaaffkaafaaaaadabaaaiiaabaaffia
agaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappia
aaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeia
abaaaaacacaaahoaahaaoekappppaaaafdeieefcnmagaaaaeaaaabaalhabaaaa
fjaaaaaeegiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaa
fjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
amaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
elaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaalaaaaaaddaaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaaaaaaaaajbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaamaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaa
bkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadbaaaaaiecaabaaa
aaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaamaaaaaadhaaaaajbcaabaaa
aaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaajaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaalaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaajaaaaaadkiacaaaadaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
ajaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
ebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaagaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaahaaaaaakgiocaaaaaaaaaaaahaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaa
ahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
laaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaa
ahaiaaaakeaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 57 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Float 12 [V_FR_Fragmentum]
Float 13 [V_FR_DisplaceAmount]
Float 14 [V_FR_FragmentsScale]
Float 15 [V_FR_DistanceToActivator]
Vector 16 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[18] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..16],
		{ 20, -1 } };
TEMP R0;
TEMP R1;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[16];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[15].x;
MIN R0.z, R0.y, c[16].w;
MOV R0.x, c[16].w;
FLR R1.xyz, vertex.normal;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[16];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[16].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.x, R0.y, R0.w, R0;
MUL R0.y, R0.x, c[12].x;
MIN R0.y, R0, c[0].x;
MAX R0.y, R0, c[0];
ABS R0.z, R0.y;
MOV R0.w, c[10];
MOV R0.y, c[0].x;
MUL R0.w, R0, c[13].x;
ADD R0.y, -R0, c[14].x;
MAD R0.y, R0.z, R0, c[0].x;
MUL R0.w, R0, c[12].x;
MAX R1.w, R0.y, c[0].y;
MUL R0.w, R0, R0.x;
MOV R0.xyz, vertex.attrib[14];
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.w, vertex.attrib[14];
MUL R1.xyz, R1, c[0].z;
MAD R1.xyz, R1, R0.w, R0;
MOV R1.w, vertex.position;
FRC R0.xyz, vertex.normal;
MAD R0.xyz, R0, c[17].x, c[17].y;
MUL R0.xyz, R0, c[10].w;
DP4 result.position.w, R1, c[4];
DP4 result.position.z, R1, c[3];
DP4 result.position.y, R1, c[2];
DP4 result.position.x, R1, c[1];
FRC R1.xy, vertex.texcoord[0];
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
MUL R1.xy, R1, c[11];
DP3 result.texcoord[3].x, R0, c[5];
MUL R0.xy, R1, c[0].w;
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
END
# 57 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 68 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Float 11 [V_FR_Fragmentum]
Float 12 [V_FR_DisplaceAmount]
Float 13 [V_FR_FragmentsScale]
Float 14 [V_FR_DistanceToActivator]
Vector 15 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c16, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c17, 10.00000000, 20.00000000, -1.00000000, 0
mov r2.xyz, v3
mov r1.w, c16.y
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c15
dp3 r0.z, r1, r1
mov r0.w, c15
slt r0.x, c16, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c16.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
add r0.w, -r0.y, c16.y
add r0.z, r0, c14.x
mul r0.w, r0.z, r0
min r0.z, r0, c15.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c16.x, r0.x
sge r0.x, r0, c16
mul r0.x, r0, r0.y
abs r0.y, c15.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c15
slt r0.x, c16, r0
add r0.z, -r0.x, c16.y
mul r0.z, r0, r0.w
max r0.y, r0, c16.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c11.x
min r0.y, r0, c16
max r0.y, r0, c16.x
mov r0.w, c12.x
mov r0.z, c13.x
mul r0.w, c9, r0
mul r0.w, r0, c11.x
mul r1.w, r0, r0.x
add r0.z, c16, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c16
max r0.w, r0.y, c16.x
frc r1.xyz, v2
add r0.xyz, v2, -r1
add r2.xyz, v0, -r2
mad r2.xyz, r2, r0.w, v3
mul r0.xyz, r0, c16.w
mad r1.xyz, r1, c17.y, c17.z
mul r1.xyz, r1, c9.w
mad r0.xyz, r0, r1.w, r2
mov r0.w, v0
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c10
mul r0.xy, r0, c17.x
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 38 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedjcdggjlfeljfmibadicohndghibfabnlabaaaaaafmahaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefcpaafaaaaeaaaabaahmabaaaafjaaaaaeegiocaaaaaaaaaaa
aiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
acaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
ahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
elaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaajbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaa
bkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadbaaaaaiecaabaaa
aaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadhaaaaajbcaabaaa
aaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
ebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaakhcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaa
acaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaa
aaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaa
egiacaaaaaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaa
aceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaacaaaaaa
bkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaaaaaaaaa
egacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaa
acaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 38 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 32 [_MainTex_ST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecednehghepgcckicdpidkmplpaomcleplcjabaaaaaahialaaaaaeaaaaaa
daaaaaaaeiaeaaaaeaakaaaapaakaaaaebgpgodjbaaeaaaabaaeaaaaaaacpopp
jeadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaacaa
abaaabaaaaaaaaaaaaaaaeaaabaaacaaaaaaaaaaaaaaagaaacaaadaaaaaaaaaa
abaaaaaaabaaafaaaaaaaaaaacaaaaaaaeaaagaaaaaaaaaaacaaamaaaeaaakaa
aaaaaaaaacaabeaaabaaaoaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafapaaapka
gpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaafbaaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabdaaaaacaaaaahia
acaaoejaaeaaaaaeabaaahiaaaaaoeiaapaaffkaapaakkkaacaaaaadaaaaahia
aaaaoeibacaaoejaafaaaaadaaaaahiaaaaaoeiaapaaaakaafaaaaadabaaahia
abaaoeiaaoaappkaafaaaaadacaaahiaabaaffiaalaaoekaaeaaaaaeabaaalia
akaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoaamaaoekaabaakkiaabaapeia
bdaaaaacabaaadiaabaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaac
abaaamiaabaaoekaaeaaaaaeaaaaadoaabaaoeiabaaaaakaabaaooiaafaaaaad
abaaahiaadaaffjaalaaoekaaeaaaaaeabaaahiaakaaoekaadaaaajaabaaoeia
aeaaaaaeabaaahiaamaaoekaadaakkjaabaaoeiaacaaaaadabaaahiaabaaoeia
anaaoekaacaaaaadabaaahiaabaaoeiaaeaaoekbaiaaaaadaaaaaiiaabaaoeia
abaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaacaaaaaiiaaaaappiaacaaaaad
aaaaaiiaaaaappiaadaaffkacdaaaaacabaaabiaaeaappkaacaaaaadabaaabia
aaaappiaabaaaaibakaaaaadaaaaaiiaaaaappiaaeaappkaacaaaaadaaaaaiia
aaaappibaeaappkaalaaaaadabaaabiaabaaaaiaapaappkaabaaaaacabaaamia
apaaoekaamaaaaadabaaaciaabaappiaaeaappkabcaaaaaeacaaabiaabaaffia
aaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaiaacaaaakaalaaaaadaaaaaiia
aaaappiaapaappkaakaaaaadaaaaaiiaaaaappiaapaakkkbacaaaaadabaaabia
abaakkiaadaaaakaaeaaaaaeaaaaaiiaaaaappiaabaaaaiaapaakkkbalaaaaad
aaaaaiiaaaaappiaapaappkaabaaaaacabaaahiaadaaoejaacaaaaadabaaahia
abaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeiaaaaappiaadaaoejaabaaaaac
aaaaaiiaaoaappkaafaaaaadaaaaaiiaaaaappiaacaaffkaafaaaaadaaaaaiia
aaaappiaacaaaakaafaaaaadaaaaaiiaacaaaaiaaaaappiaaeaaaaaeaaaaahia
aaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffiaahaaoekaaeaaaaae
abaaapiaagaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaaiaaoekaaaaakkia
abaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadma
aaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoa
afaaoekappppaaaafdeieefcpaafaaaaeaaaabaahmabaaaafjaaaaaeegiocaaa
aaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaa
acaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaa
fgbfbaaaadaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaa
aaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaa
apaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
aaaaaaaaahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaadeaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaa
aaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadbaaaaai
ecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadhaaaaaj
bcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaa
dicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaa
aaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialp
dcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaa
aaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaa
aaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaa
dcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaa
adaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaa
acaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaa
aaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaa
abaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaakhcaabaaa
abaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaaf
dcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaa
aaaaaaaaegiacaaaaaaaaaaaacaaaaaadcaaaaandccabaaaabaaaaaaegaabaaa
aaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaa
acaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaa
aaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaa
egiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaa
aaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab
ejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
jcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebem
aafeebeoehefeofeaaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaa
giaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 62 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_FragmentsScale]
Float 16 [V_FR_DistanceToActivator]
Vector 17 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[19] = { { 1, 0, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..17],
		{ 20, -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.w, c[0].x;
MOV R1.xyz, vertex.attrib[14];
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[17];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[16].x;
MIN R0.z, R0.y, c[17].w;
MOV R0.x, c[17].w;
MOV R1.xyz, vertex.attrib[14];
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[17];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[17].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.y, R0, R0.w, R0.x;
MUL R0.x, R0.y, c[13];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R0.z, R0.x;
MOV R0.w, c[11];
MOV R0.x, c[0];
MUL R0.w, R0, c[14].x;
ADD R0.x, -R0, c[15];
MAD R0.x, R0.z, R0, c[0];
MUL R0.w, R0, c[13].x;
MUL R0.w, R0, R0.y;
MAX R1.w, R0.x, c[0].y;
FLR R0.xyz, vertex.normal;
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.xyz, R0, c[0].z;
MAD R1.xyz, R0, R0.w, R1;
MOV R1.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R2.xyz, R0.xyww, c[18].z;
MUL R2.y, R2, c[9].x;
ADD result.texcoord[5].xy, R2, R2.z;
FRC R2.xyz, vertex.normal;
MAD R1.xyz, R2, c[18].x, c[18].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
END
# 62 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 73 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_FragmentsScale]
Float 16 [V_FR_DistanceToActivator]
Vector 17 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c18, 0.00000000, 1.00000000, -1.00000000, 0.00100000
def c19, 10.00000000, 20.00000000, -1.00000000, 0.50000000
mov r1.w, c18.y
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c17
dp3 r0.z, r1, r1
mov r0.w, c17
slt r0.x, c18, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c18.x, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.xyz, v3
add r0.w, -r0.y, c18.y
add r0.z, r0, c16.x
mul r0.w, r0.z, r0
min r0.z, r0, c17.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c18.x, r0.x
sge r0.x, r0, c18
mul r0.x, r0, r0.y
abs r0.y, c17.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
add r0.w, -r0.z, c17
slt r0.x, c18, r0
add r0.z, -r0.x, c18.y
mul r0.z, r0, r0.w
max r0.y, r0, c18.x
mad r0.x, r0, r0.y, r0.z
mul r0.y, r0.x, c13.x
min r0.y, r0, c18
max r0.y, r0, c18.x
mov r0.w, c14.x
mov r0.z, c15.x
mul r0.w, c11, r0
mul r0.w, r0, c13.x
mul r0.w, r0, r0.x
add r0.z, c18, r0
abs r0.y, r0
mad r0.y, r0, r0.z, c18
max r1.w, r0.y, c18.x
frc r2.xyz, v2
add r0.xyz, v2, -r2
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v3
mul r0.xyz, r0, c18.w
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c19.w
mul r3.y, r3, c8.x
mad r1.xyz, r2, c19.y, c19.z
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c19.x
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedlhpfpgdgkjdmeonageplkoicoehdbclpabaaaaaabmaiaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
jiagaaaaeaaaabaakgabaaaafjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaac
adaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
adaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaa
aaaaaaaaakaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaa
aaaaaaaaalaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaia
mbaaaaaaaaaaaaaaalaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaa
dkiacaaaaaaaaaaaalaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaa
dkiacaaaaaaaaaaaalaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaa
bkaabaaaaaaaaaaaakaabaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaaebaaaaafhcaabaaaabaaaaaa
egbcbaaaacaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaa
gpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaa
abaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaa
bkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaabaaaaaa
egaabaaaabaaaaaaegiacaaaaaaaaaaaagaaaaaadcaaaaandccabaaaabaaaaaa
egaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaa
aaaaaaaaagaaaaaabkaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadcaaaaap
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaeb
aaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaa
acaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaa
abaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaa
dcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaa
egadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaa
diaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaai
icaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaah
dccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 96 [_MainTex_ST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedglmopfhiomccegmlhoomjdhglfegmohlabaaaaaaiaamaaaaaeaaaaaa
daaaaaaajaaeaaaadaalaaaaoaalaaaaebgpgodjfiaeaaaafiaeaaaaaaacpopp
naadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaagaa
abaaabaaaaaaaaaaaaaaaiaaabaaacaaaaaaaaaaaaaaakaaacaaadaaaaaaaaaa
abaaafaaabaaafaaaaaaaaaaacaaaaaaabaaagaaaaaaaaaaadaaaaaaaeaaahaa
aaaaaaaaadaaamaaaeaaalaaaaaaaaaaadaabeaaabaaapaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafbaaaapkagpbciddkaaaakaebaaaaialpaaaaaaaafbaaaaaf
bbaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadia
adaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeabaaahiaaaaaoeiabaaaffka
baaakkkaacaaaaadaaaaahiaaaaaoeibacaaoejaafaaaaadaaaaahiaaaaaoeia
baaaaakaafaaaaadabaaahiaabaaoeiaapaappkaafaaaaadacaaahiaabaaffia
amaaoekaaeaaaaaeabaaaliaalaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoa
anaaoekaabaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaadabaaadia
abaaoeiaabaaoekaabaaaaacacaaabiabbaaaakaaeaaaaaeaaaaadoaabaaoeia
acaaaaiaabaaookaafaaaaadabaaahiaadaaffjaamaaoekaaeaaaaaeabaaahia
alaaoekaadaaaajaabaaoeiaaeaaaaaeabaaahiaanaaoekaadaakkjaabaaoeia
acaaaaadabaaahiaabaaoeiaaoaaoekaacaaaaadabaaahiaabaaoeiaaeaaoekb
aiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappiaagaaaaac
aaaaaiiaaaaappiaacaaaaadaaaaaiiaaaaappiaadaaffkacdaaaaacabaaabia
aeaappkaacaaaaadabaaabiaaaaappiaabaaaaibakaaaaadaaaaaiiaaaaappia
aeaappkaacaaaaadaaaaaiiaaaaappibaeaappkaalaaaaadabaaabiaabaaaaia
baaappkaabaaaaacabaaamiabaaaoekaamaaaaadabaaaciaabaappiaaeaappka
bcaaaaaeacaaabiaabaaffiaaaaappiaabaaaaiaafaaaaadaaaaaiiaacaaaaia
acaaaakaalaaaaadaaaaaiiaaaaappiabaaappkaakaaaaadaaaaaiiaaaaappia
baaakkkbacaaaaadabaaabiaabaakkiaadaaaakaaeaaaaaeaaaaaiiaaaaappia
abaaaaiabaaakkkbalaaaaadaaaaaiiaaaaappiabaaappkaabaaaaacabaaahia
adaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeabaaahiaabaaoeia
aaaappiaadaaoejaabaaaaacaaaaaiiaapaappkaafaaaaadaaaaaiiaaaaappia
acaaffkaafaaaaadaaaaaiiaaaaappiaacaaaakaafaaaaadaaaaaiiaacaaaaia
aaaappiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaabaaoeiaafaaaaadabaaapia
aaaaffiaaiaaoekaaeaaaaaeabaaapiaahaaoekaaaaaaaiaabaaoeiaaeaaaaae
aaaaapiaajaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaappja
aaaaoeiaafaaaaadabaaahiaaaaapeiabbaaffkaafaaaaadabaaaiiaabaaffia
afaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappia
aaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeia
abaaaaacacaaahoaagaaoekappppaaaafdeieefcjiagaaaaeaaaabaakgabaaaa
fjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaa
fjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaadaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaalaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
aiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaakaaaaaaabeaaaaa
aaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
adaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaa
agbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaiaaaaaa
dkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaa
akiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akaabaaaabaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaak
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddk
aaaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaa
jgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaa
adaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaa
agaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
dgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaa
egbabaaaabaaaaaadiaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaa
aaaaaaaaagaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaa
aaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaa
kbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeo
aafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaakl
epfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
"
}
}
Program "fp" {
SubProgram "opengl " {
// Stats: 14 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"!!ARBfp1.0
PARAM c[4] = { state.lightmodel.ambient,
		program.local[1..2],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
DP3 R1.y, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.y, R1.y;
DP3 R1.x, fragment.texcoord[3], fragment.texcoord[3];
MUL R2.xyz, R1.y, fragment.texcoord[4];
RSQ R1.x, R1.x;
MUL R1.xyz, R1.x, fragment.texcoord[3];
DP3 R1.x, R1, R2;
MAX R1.x, R1, c[3];
MUL R1.xyz, R1.x, c[2];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[3].y;
MUL R0.xyz, R0, R1;
MUL result.color, R0, c[1];
END
# 14 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
dcl_2d s0
def c3, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
texld r1, t0, s0
dp3_pp r2.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r2.x, r2.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r2.xyz, r2.x, t4
dp3_pp r0.x, r0, r2
max_pp r0.x, r0, c3
mul_pp r0.xyz, r0.x, c2
add r0.xyz, r0, c0
mul r0.xyz, r0, c3.y
mov_pp r0.w, r1
mul_pp r0.xyz, r1, r0
mul_pp r0, r0, c1
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 12 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 128
Vector 16 [_Color]
Vector 48 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecediedifednmlklkogepcmfflafbidaiippabaaaaaaoiacaaaaadaaaaaa
cmaaaaaaleaaaaaaoiaaaaaaejfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcpiabaaaaeaaaaaaahoaaaaaafjaaaaaeegiocaaa
aaaaaaaaaeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaa
aaaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaal
hcaabaaaaaaaaaaaegiccaaaaaaaaaaaadaaaaaaagaabaaaaaaaaaaaegiccaaa
abaaaaaaaeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 12 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 128
Vector 16 [_Color]
Vector 48 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefiecedlfmhapkibhcopbpomdlghcmgaoeoeoocabaaaaaadiaeaaaaaeaaaaaa
daaaaaaahmabaaaahmadaaaaaeaeaaaaebgpgodjeeabaaaaeeabaaaaaaacpppp
piaaaaaaemaaaaaaadaaciaaaaaaemaaaaaaemaaabaaceaaaaaaemaaaaaaaaaa
aaaaabaaabaaaaaaaaaaaaaaaaaaadaaabaaabaaaaaaaaaaabaaaeaaabaaacaa
aaaaaaaaaaacppppfbaaaaafadaaapkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacdlabpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaia
acaachlabpaaaaacaaaaaajaaaaiapkaecaaaaadaaaacpiaaaaaoelaaaaioeka
ceaaaaacabaachiaabaaoelaceaaaaacacaachiaacaaoelaaiaaaaadabaacbia
abaaoeiaacaaoeiaafaaaaadabaaaoiaabaaaaiaabaablkafiaaaaaeabaaahia
abaaaaiaabaabliaadaaaakaacaaaaadabaaahiaabaaoeiaacaaoekaacaaaaad
abaaahiaabaaoeiaabaaoeiaafaaaaadaaaachiaaaaaoeiaabaaoeiaafaaaaad
aaaacpiaaaaaoeiaaaaaoekaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefc
piabaaaaeaaaaaaahoaaaaaafjaaaaaeegiocaaaaaaaaaaaaeaaaaaafjaaaaae
egiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaadaaaaaa
egbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaalhcaabaaaaaaaaaaaegiccaaa
aaaaaaaaadaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaa
aaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaabaaaaaadoaaaaabejfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedkbnidhbmaofhekjalobbegliocjicafmabaaaaaaeeacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaabaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedkndalpgopoopdhhjmhbmjegpbiohcnnmabaaaaaaeeadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaabaadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaabaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaacaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaabaaaaaadoaaaaabejfdeheojiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
imaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedkbnidhbmaofhekjalobbegliocjicafmabaaaaaaeeacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaabaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedkndalpgopoopdhhjmhbmjegpbiohcnnmabaaaaaaeeadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaabaadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaabaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaacaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaabaaaaaadoaaaaabejfdeheojiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
imaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 16 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"!!ARBfp1.0
PARAM c[4] = { state.lightmodel.ambient,
		program.local[1..2],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TXP R1.x, fragment.texcoord[5], texture[1], 2D;
DP3 R1.y, fragment.texcoord[3], fragment.texcoord[3];
RSQ R2.x, R1.y;
DP3 R1.z, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.z, R1.z;
MUL R1.yzw, R1.z, fragment.texcoord[4].xxyz;
MUL R2.xyz, R2.x, fragment.texcoord[3];
DP3 R1.y, R2, R1.yzww;
MAX R1.y, R1, c[3].x;
MUL R1.x, R1.y, R1;
MUL R1.xyz, R1.x, c[2];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[3].y;
MUL R0.xyz, R0, R1;
MUL result.color, R0, c[1];
END
# 16 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 16 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c3, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
dcl t5
texld r2, t0, s0
texldp r3, t5, s1
dp3_pp r1.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r1.x, r1.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r1.xyz, r1.x, t4
dp3_pp r0.x, r0, r1
max_pp r0.x, r0, c3
mul_pp r0.x, r0, r3
mul_pp r0.xyz, r0.x, c2
add r0.xyz, r0, c0
mul r0.xyz, r0, c3.y
mov_pp r0.w, r2
mul_pp r0.xyz, r2, r0
mul_pp r0, r0, c1
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 14 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 192
Vector 80 [_Color]
Vector 112 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecedckkplikljiepjhidanfmbilgdepcimmiabaaaaaaieadaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaaimaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefchmacaaaaeaaaaaaajpaaaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadhcbabaaaadaaaaaagcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaah
gcaabaaaaaaaaaaaagbbbaaaaeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaa
abaaaaaajgafbaaaaaaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaa
aaaaaaaaegiccaaaaaaaaaaaahaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaa
aeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 14 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 192
Vector 80 [_Color]
Vector 112 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefiecedngippoighhleadlhblgflfihednfmlllabaaaaaacmafaaaaaeaaaaaa
daaaaaaaneabaaaafiaeaaaapiaeaaaaebgpgodjjmabaaaajmabaaaaaaacpppp
emabaaaafaaaaaaaadaacmaaaaaafaaaaaaafaaaacaaceaaaaaafaaaabaaaaaa
aaababaaaaaaafaaabaaaaaaaaaaaaaaaaaaahaaabaaabaaaaaaaaaaabaaaeaa
abaaacaaaaaaaaaaaaacppppfbaaaaafadaaapkaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacaaaaaaiaaaaacdlabpaaaaacaaaaaaiaabaachlabpaaaaac
aaaaaaiaacaachlabpaaaaacaaaaaaiaadaaaplabpaaaaacaaaaaajaaaaiapka
bpaaaaacaaaaaajaabaiapkaagaaaaacaaaaaiiaadaapplaafaaaaadaaaaadia
aaaappiaadaaoelaecaaaaadaaaacpiaaaaaoeiaaaaioekaecaaaaadabaacpia
aaaaoelaabaioekaceaaaaacacaachiaabaaoelaceaaaaacadaachiaacaaoela
aiaaaaadaaaacciaacaaoeiaadaaoeiaafaaaaadaaaaabiaaaaaaaiaaaaaffia
afaaaaadacaaahiaaaaaaaiaabaaoekafiaaaaaeaaaaahiaaaaaffiaacaaoeia
adaaaakaacaaaaadaaaaahiaaaaaoeiaacaaoekaacaaaaadaaaaahiaaaaaoeia
aaaaoeiaafaaaaadabaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeia
aaaaoekaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefchmacaaaaeaaaaaaa
jpaaaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaa
afaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaae
aahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaadaaaaaa
gcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaadaaaaaa
egbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaahgcaabaaaaaaaaaaaagbbbaaa
aeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaaabaaaaaajgafbaaaaaaaaaaa
eghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaaaaaaaaaaegiccaaaaaaaaaaa
ahaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaaaaaaaaahhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaa
egbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaa
egaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaadoaaaaabejfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahahaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedghiemehlnknifblimkaooemjhpbmafcbabaaaaaafmacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdmabaaaa
eaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaa
fibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaad
mcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaaj
pcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaa
aaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedmhlaojfhfmplbbpdhiaddknfeobmaanoabaaaaaafmadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaaciadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaafaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaafaaaaaadoaaaaabejfdeheolaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
keaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedghiemehlnknifblimkaooemjhpbmafcbabaaaaaafmacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdmabaaaa
eaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaa
fibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaad
mcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaaj
pcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaa
aaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedmhlaojfhfmplbbpdhiaddknfeobmaanoabaaaaaafmadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaaciadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaafaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaafaaaaaadoaaaaabejfdeheolaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
keaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 14 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"!!ARBfp1.0
PARAM c[4] = { state.lightmodel.ambient,
		program.local[1..2],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
DP3 R1.y, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.y, R1.y;
DP3 R1.x, fragment.texcoord[3], fragment.texcoord[3];
MUL R2.xyz, R1.y, fragment.texcoord[4];
RSQ R1.x, R1.x;
MUL R1.xyz, R1.x, fragment.texcoord[3];
DP3 R1.x, R1, R2;
MAX R1.x, R1, c[3];
MUL R1.xyz, R1.x, c[2];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[3].y;
MUL R0.xyz, R0, R1;
MUL result.color, R0, c[1];
END
# 14 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
dcl_2d s0
def c3, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
texld r1, t0, s0
dp3_pp r2.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r2.x, r2.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r2.xyz, r2.x, t4
dp3_pp r0.x, r0, r2
max_pp r0.x, r0, c3
mul_pp r0.xyz, r0.x, c2
add r0.xyz, r0, c0
mul r0.xyz, r0, c3.y
mov_pp r0.w, r1
mul_pp r0.xyz, r1, r0
mul_pp r0, r0, c1
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 12 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 128
Vector 16 [_Color]
Vector 48 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecediedifednmlklkogepcmfflafbidaiippabaaaaaaoiacaaaaadaaaaaa
cmaaaaaaleaaaaaaoiaaaaaaejfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcpiabaaaaeaaaaaaahoaaaaaafjaaaaaeegiocaaa
aaaaaaaaaeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaa
aaaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaal
hcaabaaaaaaaaaaaegiccaaaaaaaaaaaadaaaaaaagaabaaaaaaaaaaaegiccaaa
abaaaaaaaeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 12 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 128
Vector 16 [_Color]
Vector 48 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefiecedlfmhapkibhcopbpomdlghcmgaoeoeoocabaaaaaadiaeaaaaaeaaaaaa
daaaaaaahmabaaaahmadaaaaaeaeaaaaebgpgodjeeabaaaaeeabaaaaaaacpppp
piaaaaaaemaaaaaaadaaciaaaaaaemaaaaaaemaaabaaceaaaaaaemaaaaaaaaaa
aaaaabaaabaaaaaaaaaaaaaaaaaaadaaabaaabaaaaaaaaaaabaaaeaaabaaacaa
aaaaaaaaaaacppppfbaaaaafadaaapkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacdlabpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaia
acaachlabpaaaaacaaaaaajaaaaiapkaecaaaaadaaaacpiaaaaaoelaaaaioeka
ceaaaaacabaachiaabaaoelaceaaaaacacaachiaacaaoelaaiaaaaadabaacbia
abaaoeiaacaaoeiaafaaaaadabaaaoiaabaaaaiaabaablkafiaaaaaeabaaahia
abaaaaiaabaabliaadaaaakaacaaaaadabaaahiaabaaoeiaacaaoekaacaaaaad
abaaahiaabaaoeiaabaaoeiaafaaaaadaaaachiaaaaaoeiaabaaoeiaafaaaaad
aaaacpiaaaaaoeiaaaaaoekaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefc
piabaaaaeaaaaaaahoaaaaaafjaaaaaeegiocaaaaaaaaaaaaeaaaaaafjaaaaae
egiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaadaaaaaa
egbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaalhcaabaaaaaaaaaaaegiccaaa
aaaaaaaaadaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaa
aaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaabaaaaaadoaaaaabejfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedkbnidhbmaofhekjalobbegliocjicafmabaaaaaaeeacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaabaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedkndalpgopoopdhhjmhbmjegpbiohcnnmabaaaaaaeeadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaabaadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaabaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaacaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaabaaaaaadoaaaaabejfdeheojiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
imaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedkbnidhbmaofhekjalobbegliocjicafmabaaaaaaeeacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaabaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 144
Vector 16 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedkndalpgopoopdhhjmhbmjegpbiohcnnmabaaaaaaeeadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaabaadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaabaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaacaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaabaaaaaadoaaaaabejfdeheojiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
imaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 16 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"!!ARBfp1.0
PARAM c[4] = { state.lightmodel.ambient,
		program.local[1..2],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TXP R1.x, fragment.texcoord[5], texture[1], 2D;
DP3 R1.y, fragment.texcoord[3], fragment.texcoord[3];
RSQ R2.x, R1.y;
DP3 R1.z, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.z, R1.z;
MUL R1.yzw, R1.z, fragment.texcoord[4].xxyz;
MUL R2.xyz, R2.x, fragment.texcoord[3];
DP3 R1.y, R2, R1.yzww;
MAX R1.y, R1, c[3].x;
MUL R1.x, R1.y, R1;
MUL R1.xyz, R1.x, c[2];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[3].y;
MUL R0.xyz, R0, R1;
MUL result.color, R0, c[1];
END
# 16 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 16 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_Color]
Vector 2 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c3, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
dcl t5
texld r2, t0, s0
texldp r3, t5, s1
dp3_pp r1.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r1.x, r1.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r1.xyz, r1.x, t4
dp3_pp r0.x, r0, r1
max_pp r0.x, r0, c3
mul_pp r0.x, r0, r3
mul_pp r0.xyz, r0.x, c2
add r0.xyz, r0, c0
mul r0.xyz, r0, c3.y
mov_pp r0.w, r2
mul_pp r0.xyz, r2, r0
mul_pp r0, r0, c1
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 14 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 192
Vector 80 [_Color]
Vector 112 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecedckkplikljiepjhidanfmbilgdepcimmiabaaaaaaieadaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaaimaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefchmacaaaaeaaaaaaajpaaaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadhcbabaaaadaaaaaagcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaah
gcaabaaaaaaaaaaaagbbbaaaaeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaa
abaaaaaajgafbaaaaaaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaa
aaaaaaaaegiccaaaaaaaaaaaahaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaa
aeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 14 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 192
Vector 80 [_Color]
Vector 112 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefiecedngippoighhleadlhblgflfihednfmlllabaaaaaacmafaaaaaeaaaaaa
daaaaaaaneabaaaafiaeaaaapiaeaaaaebgpgodjjmabaaaajmabaaaaaaacpppp
emabaaaafaaaaaaaadaacmaaaaaafaaaaaaafaaaacaaceaaaaaafaaaabaaaaaa
aaababaaaaaaafaaabaaaaaaaaaaaaaaaaaaahaaabaaabaaaaaaaaaaabaaaeaa
abaaacaaaaaaaaaaaaacppppfbaaaaafadaaapkaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacaaaaaaiaaaaacdlabpaaaaacaaaaaaiaabaachlabpaaaaac
aaaaaaiaacaachlabpaaaaacaaaaaaiaadaaaplabpaaaaacaaaaaajaaaaiapka
bpaaaaacaaaaaajaabaiapkaagaaaaacaaaaaiiaadaapplaafaaaaadaaaaadia
aaaappiaadaaoelaecaaaaadaaaacpiaaaaaoeiaaaaioekaecaaaaadabaacpia
aaaaoelaabaioekaceaaaaacacaachiaabaaoelaceaaaaacadaachiaacaaoela
aiaaaaadaaaacciaacaaoeiaadaaoeiaafaaaaadaaaaabiaaaaaaaiaaaaaffia
afaaaaadacaaahiaaaaaaaiaabaaoekafiaaaaaeaaaaahiaaaaaffiaacaaoeia
adaaaakaacaaaaadaaaaahiaaaaaoeiaacaaoekaacaaaaadaaaaahiaaaaaoeia
aaaaoeiaafaaaaadabaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeia
aaaaoekaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefchmacaaaaeaaaaaaa
jpaaaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaa
afaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaae
aahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaadaaaaaa
gcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaadaaaaaa
egbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaahgcaabaaaaaaaaaaaagbbbaaa
aeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaaabaaaaaajgafbaaaaaaaaaaa
eghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaaaaaaaaaaegiccaaaaaaaaaaa
ahaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaaaaaaaaahhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaa
egbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaa
egaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaadoaaaaabejfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahahaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedghiemehlnknifblimkaooemjhpbmafcbabaaaaaafmacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdmabaaaa
eaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaa
fibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaad
mcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaaj
pcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaa
aaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedmhlaojfhfmplbbpdhiaddknfeobmaanoabaaaaaafmadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaaciadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaafaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaafaaaaaadoaaaaabejfdeheolaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
keaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[2] = { program.local[0],
		{ 8 } };
TEMP R0;
TEMP R1;
TEX R1, fragment.texcoord[1], texture[1], 2D;
TEX R0, fragment.texcoord[0], texture[0], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL R0.xyz, R0, c[1].x;
MUL result.color, R0, c[0];
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Vector 0 [_Color]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c1, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c1.x
mul_pp r0, r0, c0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0
eefiecedghiemehlnknifblimkaooemjhpbmafcbabaaaaaafmacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdmabaaaa
eaaaaaaaepaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaa
fibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaad
mcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaaj
pcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaa
aaaaaaaaegaobaaaabaaaaaaegiocaaaaaaaaaaaafaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 4 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
ConstBuffer "$Globals" 208
Vector 80 [_Color]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
eefiecedmhlaojfhfmplbbpdhiaddknfeobmaanoabaaaaaafmadaaaaaeaaaaaa
daaaaaaacmabaaaahaacaaaaciadaaaaebgpgodjpeaaaaaapeaaaaaaaaacpppp
lmaaaaaadiaaaaaaabaacmaaaaaadiaaaaaadiaaacaaceaaaaaadiaaaaaaaaaa
abababaaaaaaafaaabaaaaaaaaaaaaaaaaacppppfbaaaaafabaaapkaaaaaaaeb
aaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaaja
aaaiapkabpaaaaacaaaaaajaabaiapkaabaaaaacaaaacdiaaaaabllaecaaaaad
aaaacpiaaaaaoeiaabaioekaecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaad
aaaaciiaaaaappiaabaaaakaafaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaad
abaachiaaaaaoeiaabaaoeiaafaaaaadaaaacpiaabaaoeiaaaaaoekaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdmabaaaaeaaaaaaaepaaaaaafjaaaaae
egiocaaaaaaaaaaaagaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipccabaaaaaaaaaaaegaobaaaabaaaaaa
egiocaaaaaaaaaaaafaaaaaadoaaaaabejfdeheolaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaa
abaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaa
keaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
}
 }
}
CustomEditor "FragmentumMaterial_Editor"
}