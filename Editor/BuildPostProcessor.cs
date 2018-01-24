//
// Copyright (c) 2017 eppz! mobile, Gergely Borbás (SP)
//
// http://www.twitter.com/_eppz
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
// PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
// CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
// OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

using System.IO;
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;


namespace EPPZ.DeepLink.Editor
{


	public class BuildPostProcessor
	{


		[PostProcessBuildAttribute(1)]
		public static void OnPostProcessBuild(BuildTarget target, string path)
		{
			Debug.Log("EPPZ.DeepLink.Editor.BuildPostProcessor.OnPostProcessBuild()");

			if (target == BuildTarget.iOS)
			{
				// Read.
				string projectPath = PBXProject.GetPBXProjectPath(path);
				PBXProject project = new PBXProject();
				project.ReadFromString(File.ReadAllText(projectPath));
				string targetName = PBXProject.GetUnityTargetName();
				string projectTarget = project.TargetGuidByName(targetName);

				Debug.Log("EPPZ.DeepLink.Editor.BuildPostProcessor.OnPostProcessBuild.targetName: `"+targetName+"`");
				Debug.Log("EPPZ.DeepLink.Editor.BuildPostProcessor.OnPostProcessBuild.path: `"+path+"`");				

				AddFrameworks(project, projectTarget);

				// Write.
				File.WriteAllText(projectPath, project.WriteToString());
			}
		}

		static void AddFrameworks(PBXProject project, string target)
		{
			// Linker flags to load library.
			project.AddBuildProperty(target, "OTHER_LDFLAGS", "-ObjC");
		}
	}
}