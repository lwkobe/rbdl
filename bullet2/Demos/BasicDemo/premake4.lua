	
		project "bullet2_basic_demo_opengl2"

		language "C++"
				
		kind "ConsoleApp"
		
		targetdir "../../../bin"

  		includedirs {
                ".",
                "../../../bullet2"
      }
		

		links { 
			"BulletSoftBody",
			"BulletDynamics",
			"BulletCollision",
			"LinearMath"
		}
		

		initOpenGL()
		initGlew()
	
		files {
				"BasicDemo.cpp",
				"BasicDemo.h",
				"main_opengl2.cpp",
				"../../DemosCommon/GL_ShapeDrawer.cpp",
				"../../DemosCommon/GL_ShapeDrawer.h",
				"../../DemosCommon/OpenGL2Renderer.cpp",
				"../../DemosCommon/OpenGL2Renderer.h",
				"../../../examples/rendertest/GLPrimitiveRenderer.cpp",
				"../../../examples/rendertest/GLPrimitiveRenderer.h",
				"../../../examples/rendertest/LoadShader.cpp",
				"../../../examples/rendertest/LoadShader.h",
												
		}
		if os.is("Windows") then
			files {
                             "../../../examples/rendertest/Windows/Win32OpenGLWindow.cpp",
                               "../../../examples/rendertest/Windows/Win32OpenGLWindow.h",
                               "../../../examples/rendertest/Windows/Win32Window.cpp",
                               "../../../examples/rendertest/Windows/Win32Window.h",   
			}
		end
		if os.is("macosx") then
			links { "Cocoa.framework" }
			files {
				"../../../examples/rendertest/Apple/MacOpenGLWindow.mm",
				 "../../../examples/rendertest/Apple/MacOpenGLWindow.h",	
			}
		end
