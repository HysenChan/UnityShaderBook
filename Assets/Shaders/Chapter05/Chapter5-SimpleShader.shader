Shader "Custom/Chapter5-SimpleShader" {
	SubShader{
		Pass{
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag

			//使用一个结构体来定义顶点着色器的输入
			struct a2v{
				// POSITION语义告诉Unity，用模型空间的顶点坐标填充vertex变量
				float4 vertex : POSITION;
				// NORMAL语义告诉Unity，用模型空间的法线方向填充normal变量
				float3 normal : NORMAL;
				// TEXCOORD0语义告诉Unity，用模型的第一套纹理坐标填充texcoord变量
				float4 texcoord : TEXCOORD0;
			};

			float4 vert(a2v v) : SV_POSITION{
				return mul(UNITY_MATRIX_MVP, v.vertex);
			}

			fixed4 frag() : SV_Target {
				return fixed4(1.0, 1.0, 1.0, 1.0);
			}

			ENDCG
		}
	}
}
