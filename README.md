## Automação Calculadora

  Projeto para validar operações matemáticas básicas em um aplicativo, o qual utiliza as seguintes ferramentas:

  - **[Robot Framework](https://robotframework.org)**; e
  - **[Appium](http://appium.io)**.

## Pré-requisito: 

  - [JDK e JAVA_HOME](https://thishosting.rocks/install-java-ubuntu/) instalada e configurada ([Download da SDK](https://developer.android.com/studio) e [Instalação da SDK](https://developer.android.com/studio/install?hl=pt-br));
  - [Configuração da ANDROID_HOME](https://itrendbuzz.com/set-path-environment-variable-for-android-sdk-in-ubuntu/);
  - [Appium](http://appium.io) instalado; e
  - Ter um disposito físico android conectado via USB à sua máquina e com [permissões de acesso](https://www.techtudo.com.br/dicas-e-tutoriais/2020/11/como-conectar-o-celular-ao-pc.ghtml), ou utilizar-se de um virtual, o qual pode ser criado e configurado pelo:
    - [Android Studio](https://developer.android.com/studio/run/managing-avds): ou 
    - [Genymotion](https://docs.genymotion.com/desktop/latest/01_Get_started.html).

### Instalando biblioteca do Appium para o Robot Framework

  - Execute no terminal o comando: `pip3 install --upgrade robotframework-appiumlibrary` (caso esteja no windows substitua pip3 por **pip**), veja mais detalhes na documentação do [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary);
  - **OBS**. Caso tenha problemas durante a instalação da AppiumLibrary com relação ao termo `wheel`, execute o comando: `pip3 install whell`
  
### Iniciando Ferramentas

  - Execute no terminal o comando `appium`;

  - O Terminal deve exibir essa saída:
  ```
  [Appium] Welcome to Appium v1.17.0
  [Appium] Appium REST http interface listener started on 0.0.0.0:4723
  ```
  - Inicie o disposito mobile, seja ele físico via USB ou virtual. **OBS**. Verifique se ele realmente está disponível a partir do comando: `adb devices`
  
  - Dentro do projeto navegue até **/resoruces/Resources.robot** e na secção **Variables** procure por `%{ANDROID_PLATFORM_VERSION=8.1.0}` e substitua o **8.1.0** pela versão do android do seu dispositivo, o qual será utilizado na execução dos testes.

### Execução

  - Para visualizar o resultado de todos os testes e gerar os relatórios, executar no terminal a partir da pasta raiz do projeto o comando: `robot -d ./results tests/OperacoesMatematicas.robot`.

  - Reports disponíveis dentro da pasta **results** do projeto, para visualizá-lo abra o arquivo `/results/report.html` em um navegador de sua preferência.
