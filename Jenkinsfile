/**
# Copyright CESSDA ERIC 2020
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
*/
pipeline {
	agent {
        label 'jnlp-himem'
    }
	stages {
		stage('Install Dependencies') {
			agent {
				docker {
					image 'ruby:2.7'
					reuseNode true
				}
			}
			steps {
				sh 'gem install bundler -v 2.4.22'
				sh 'bundle install'
			}
		}
		stage('Build Gem') {
			agent {
				docker {
					image 'ruby:2.7'
					reuseNode true
				}
			}
			stages {
				stage ('Prerelease') {
					environment {
						PRERELEASE = 'true'
					}
					steps {
						sh 'gem build jekyll-cessda-docs.gemspec'
					}
					when { not { buildingTag() } }
				}
				stage ('Release') {
					steps {
						sh 'gem build jekyll-cessda-docs.gemspec'
					}
					when { buildingTag() }
				}
			}
			post {
				success {
					archiveArtifacts 'jekyll-cessda-docs-*.gem'
				}
			}
		}
		stage('Push Gem') {
			agent {
				docker {
					image 'ruby:2.7'
					reuseNode true
				}
			}
			steps {
				withCredentials([string(credentialsId: 'ad8bacc2-96e7-4192-a4d0-4a954c1c5c09', variable: 'GEM_HOST_API_KEY')]) {
					sh 'gem push jekyll-cessda-docs-*.gem'
				}
			}
			when { anyOf { branch 'master'; buildingTag() } }
		}
	}
}
