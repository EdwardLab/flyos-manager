.class public Lcom/google/appinventor/components/runtime/Sharing;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sharing is a non-visible component that enables sharing files and/or messages between your app and other apps installed on a device. The component will display a list of the installed apps that can handle the information provided, and will allow the user to choose one to share the content with, for instance a mail app, a social network app, a texting app, and so on.<br>The file path can be taken directly from other components such as the Camera or the ImagePicker, but can also be specified directly to read from storage. Be aware that different devices treat storage differently, so a few things to try if, for instance, you have a file called arrow.gif in the folder <code>Appinventor/assets</code>, would be: <ul><li><code>\"file:///sdcard/Appinventor/assets/arrow.gif\"</code></li> or <li><code>\"/storage/Appinventor/assets/arrow.gif\"</code></li></ul>"
    iconName = "images/sharing.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, ""

    .line 93
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sharing;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Sharing;->ShareDialogMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public AppNotFound(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the social media name if an app is not installed. Possible names are \'Facebook Messenger\', \'Facebook\', \'Twitter\', \'Telegram\', \'Twitter\', \'Snapchat\', \'Google Plus\' or the given custom package name."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AppNotFound"

    .line 213
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ShareDialogMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Send using..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text for the sharing dialog. The default text is \'Send using...\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareDialogMessage- User forgot to add a default share dialog text. Use default text."

    .line 222
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Send using..."

    .line 224
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sharing;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

    return-void
.end method

.method public ShareFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a file through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the file inserted on it."
    .end annotation

    const-string v0, ""

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sharing;->ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares both a file and a message through any capable application installed on the phone by displaying a list of available apps and allowing the user to  choose one from the list. The selected app will open with the file and message inserted on it."
    .end annotation

    const-string v0, "android.intent.extra.STREAM"

    const-string v1, "ShareFileWithMessage"

    const-string v2, "file://"

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 145
    :cond_1
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 150
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    const-string v4, "."

    .line 152
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 154
    invoke-virtual {v4, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "application/octet-stream"

    .line 160
    :cond_3
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".provider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 161
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_4

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "android.intent.extra.TEXT"

    .line 167
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Sharing;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    const-string v0, "ShareFile"

    if-eqz p2, :cond_6

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    move-object v0, v1

    .line 174
    :cond_6
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x7d1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 180
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SocialMediaSharing"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    .line 178
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p2, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void
.end method

.method public ShareMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the message inserted on it."
    .end annotation

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 111
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sharing;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public ShareMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through the given app. If the given app is not installed, then the \'AppNotFound\' event will be invoked and return the given name."
    .end annotation

    const-string v0, "SocialMediaSharing"

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, "ShareMessageTo- User forgot to add a message. Use default message."

    .line 326
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    if-eqz p2, :cond_2

    .line 329
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string p2, "ShareMessageTo- User forgot to add a name. Use default custom name."

    .line 331
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Custom"

    :cond_3
    const-string v0, "ShareMessageTo- "

    .line 333
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareMessageToFacebook(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Facebook. If Facebook is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Facebook\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareMessageToFacebook- User forgot to add a message. Use default message."

    .line 248
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    const-string v0, "com.facebook.katana"

    const-string v1, "Facebook"

    const-string v2, "ShareMessageToFacebook- "

    .line 250
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareMessageToFacebookMessenger(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Facebook Messenger. If Messenger is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Facebook Messenger\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareMessageToFacebookMessenger- User forgot to add a message. Use default message."

    .line 235
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    const-string v0, "com.facebook.orca"

    const-string v1, "Facebook Messenger"

    const-string v2, "ShareMessageToFacebookMessenger- "

    .line 237
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareMessageToGooglePlus(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Google Plus. If Google+ is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Google Plus\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareMessageToGooglePlus- User forgot to add a message. Use default message."

    .line 313
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    const-string v0, "com.google.android.apps.plus"

    const-string v1, "Google Plus"

    const-string v2, "ShareMessageToGooglePlus- "

    .line 315
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareMessageToSnapchat(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Snapchat. If Snapchat is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Snapchat\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareMessageToSnapchat- User forgot to add a message. Use default message."

    .line 300
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    const-string v0, "com.snapchat.android"

    const-string v1, "Snapchat"

    const-string v2, "ShareMessageToSnapchat- "

    .line 302
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareMessageToTelegram(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Telegram. If Telegram is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Telegram\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareMessageToTelegram- User forgot to add a message. Use default message."

    .line 274
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    const-string v0, "org.telegram.messenger"

    const-string v1, "Telegram"

    const-string v2, "ShareMessageToTelegram- "

    .line 276
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareMessageToTwitter(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Twitter. If Twitter is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Twitter\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareMessageToTwitter- User forgot to add a message. Use default message."

    .line 261
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    const-string v0, "com.twitter.android"

    const-string v1, "Twitter"

    const-string v2, "ShareMessageToTwitter- "

    .line 263
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareMessageToWhatsApp(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through WhatsApp. If WhatsApp is not installed, then the \'AppNotFound\' event will be invoked and return the name \'WhatsApp\'."
    .end annotation

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "SocialMediaSharing"

    const-string v0, "ShareMessageToWhatsApp- User forgot to add a message. Use default message."

    .line 287
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Checkout www.kodular.io - Android Builder."

    :cond_1
    const-string v0, "com.whatsapp"

    const-string v1, "WhatsApp"

    const-string v2, "ShareMessageToWhatsApp- "

    .line 289
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    .line 339
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "text/plain"

    .line 340
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 346
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/Sharing;->AppNotFound(Ljava/lang/String;)V

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SocialMediaSharing"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
