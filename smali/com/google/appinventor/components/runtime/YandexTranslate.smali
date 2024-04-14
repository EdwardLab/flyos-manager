.class public final Lcom/google/appinventor/components/runtime/YandexTranslate;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Use this component to translate words and sentences between different languages. This component needs Internet access, as it will request translations to the Yandex.Translate service. Specify the source and target language in the form source-target using two letter language codes. So\"en-es\" will translate from English to Spanish while \"es-ru\" will translate from Spanish to Russian. If you leave out the source language, the service will attempt to detect the source language. So providing just \"es\" will attempt to detect the source language and translate it to Spanish.<p /> This component is powered by the Yandex translation service.  See http://api.yandex.com/translate/ for more information, including the list of available languages and the meanings of the language codes and status codes. <p />Note: Translation happens asynchronously in the background. When the translation is complete, the \"GotTranslation\" event is triggered."
    iconName = "images/yandex.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field public static final YANDEX_TRANSLATE_SERVICE_URL:Ljava/lang/String; = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="


# instance fields
.field private UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->setYandexTranslateTagline()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    return-void
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    .line 164
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 172
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x0

    .line 173
    invoke-virtual {v2, p0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 178
    throw p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://translate.yandex.net/api/v1.5/tr.json/translate?key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&text="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "UTF-8"

    .line 1122
    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1124
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_0

    .line 1128
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/YandexTranslate;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p2

    .line 1130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 1132
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "text"

    .line 1135
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1136
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1139
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/YandexTranslate$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/appinventor/components/runtime/YandexTranslate$2;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1148
    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    return-void
.end method

.method public final GotTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Yandex.Translate service returns the translated text. This event also provides a response code for error handling. If the responseCode is not 200, then something went wrong with the call, and the translation will not be available."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotTranslation"

    .line 200
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "By providing a target language to translate to (for instance, \'es\' for Spanish, \'en\' for English, or \'ru\' for Russian), and a word or sentence to translate, this method will request a translation to the Yandex.Translate service.\nOnce the text is translated by the external service, the event GotTranslation will be executed.\nNote: Yandex.Translate will attempt to detect the source language. You can also specify prepending it to the language translation. I.e., es-ru will specify Spanish to Russian translation."
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->UnxMFGkcOXM6xsX56zG6IiZYxtO3aB3YAZ9KtPD7LpEQMRTmKJfme555SHlBUQeS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x899

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RequestTranslation"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/YandexTranslate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/YandexTranslate$1;-><init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method
