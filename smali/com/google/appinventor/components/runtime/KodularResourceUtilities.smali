.class public Lcom/google/appinventor/components/runtime/KodularResourceUtilities;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/resourceUtilities.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Ljava/lang/String;

.field private isCompanion:Z

.field private nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->context:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    :cond_0
    const-string p1, "KodularResourceUtilities"

    const-string v0, "Kodular Resource Utilities Created"

    .line 53
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "KodularResourceUtilities"

    if-nez p0, :cond_0

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "There was a problem to get the string \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure on your side is all correct."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "\\"

    const-string v2, ""

    .line 105
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 107
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object p2

    :catch_0
    move-exception p0

    .line 118
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :catch_1
    move-exception p0

    .line 115
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "The file name can not be empty."

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "file://"

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 130
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 134
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    :try_start_0
    const-string p2, "http://"

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 149
    :cond_2
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/FileReader;

    invoke-direct {p2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_3

    .line 140
    :cond_3
    :goto_1
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const p2, 0xea60

    .line 142
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 143
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_4

    .line 144
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_2

    :cond_4
    return-object v0

    .line 152
    :cond_5
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    move-object p1, p2

    .line 154
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 155
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 157
    :cond_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 160
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularResourceUtilities"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public GetStringContentByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block is deprecated and will be removed soon. Use instead \'Get String From Asset\' or \'Get String From Path\'."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "\'Get String Content By Name\' is deprecated and works not longer. Use instead \'Get String From Asset\' or \'Get String From Path\' blocks."

    return-object p1
.end method

.method public GetStringFromAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the text from a asset resource file. Make sure you uploaded a file at \'Resource File From Asset\' property."
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->ResourceFileFromAsset()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetStringFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the text from a path resource file. Make sure you added a file path at \'Resource File From Path\' property. The path can be too a link to a url."
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->ResourceFileFromPath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->isCompanion:Z

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ResourceFileFromAsset()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the used resource file from asset."
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;

    return-object v0
.end method

.method public ResourceFileFromAsset(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the file which is used as resource file. The file must be stored in the assets folder."
    .end annotation

    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public ResourceFileFromPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the used resource file from path."
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Ljava/lang/String;

    return-object v0
.end method

.method public ResourceFileFromPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the file which is used as resource file. The file path must be valid to any file you want to use. The path can be too a link to a url."
    .end annotation

    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularResourceUtilities;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:Ljava/lang/String;

    :cond_0
    return-void
.end method
