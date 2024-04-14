.class public Lcom/google/appinventor/components/runtime/KodularRecaptcha;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    helpUrl = "https://docs.kodular.io/components/google/recaptcha/"
    iconName = "images/recaptcha.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "play-services-safetynet.aar",
        "play-services-safetynet.jar",
        "play-services-base.aar",
        "play-services-base.jar",
        "play-services-basement.aar",
        "play-services-basement.jar",
        "play-services-tasks.aar",
        "play-services-tasks.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private final qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$1;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string p1, "ReCaptcha"

    const-string v0, "Kodular reCaptcha component created"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularRecaptcha;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    .line 1175
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "secret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&response="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https://www.google.com/recaptcha/api/siteverify"

    .line 1178
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    .line 1179
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "POST"

    .line 1180
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded; charset=UTF-8"

    .line 1181
    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 1183
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1184
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1185
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1187
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 1188
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1192
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    int-to-char v3, v3

    .line 1193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1195
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 1197
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const-string p1, "success"

    .line 1200
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string p2, "challenge_ts"

    .line 1203
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez p2, :cond_1

    :catch_0
    move-object p2, v0

    :cond_1
    :try_start_2
    const-string v2, "apk_package_name"

    .line 1213
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v2, :cond_2

    :catch_1
    move-object v2, v0

    .line 1222
    :cond_2
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v5, "error-codes"

    .line 1224
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1225
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    .line 1226
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1227
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/Map;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1233
    :catch_2
    :cond_3
    :try_start_5
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move v4, p1

    move-object v5, p2

    move-object v7, v0

    move-object v6, v2

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    .line 1238
    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    move-object v7, p1

    move-object v5, v0

    move-object v6, v5

    const/4 v4, 0x0

    .line 1248
    :goto_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance p2, Lcom/google/appinventor/components/runtime/KodularRecaptcha$5;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$5;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;ZLjava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public Prompt()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prompt the user with a Google reCaptcha challenge. Needs a reCaptcha API Site Key to work."
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/safetynet/SafetyNetClient;->verifyWithRecaptcha(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$3;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$2;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public PromptErrored(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked when Google reCaptcha prompt returns an error status code."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "PromptErrored"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PromptSucceeded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked Google reCaptcha returns a success status code, returning the user response token which should be verified later."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PromptSucceeded"

    .line 141
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SiteKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the Google reCaptcha API Site Key."
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Ljava/lang/String;

    return-object v0
.end method

.method public SiteKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Google reCaptcha API Site Key. It is mandatory to use reCaptcha, as it will identify user\'s request with the challenge prompt."
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularRecaptcha;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Ljava/lang/String;

    return-void
.end method

.method public Validate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Validate the received userResponseToken with your API Secret Key, for increased security. It is recommended to use the \'Obfuscated Text\' block with the API Secret Key."
    .end annotation

    .line 152
    new-instance v0, Lcom/google/appinventor/components/runtime/KodularRecaptcha$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularRecaptcha$4;-><init>(Lcom/google/appinventor/components/runtime/KodularRecaptcha;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ValidateResponse(ZLjava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be triggered after the Validate method gets a response. \'success\' will return true when the prompt was completed successfully, \'challenge Timestamp\' is the date the challenge was completed in ISO format, \'app Package Name\' will return the package name of the app where the challenge was completed, and \'error Messages\' is a list of all errors that occurred during the validation."
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "ValidateResponse"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
