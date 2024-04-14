.class public final enum Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
.super Ljava/lang/Enum;
.source "OSInAppMessageAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSInAppMessageAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OSInAppMessageActionUrlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

.field public static final enum BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

.field public static final enum IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

.field public static final enum REPLACE_CONTENT:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 152
    new-instance v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const-string v1, "IN_APP_WEBVIEW"

    const/4 v2, 0x0

    const-string v3, "webview"

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    .line 155
    new-instance v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const-string v3, "BROWSER"

    const/4 v4, 0x1

    const-string v5, "browser"

    invoke-direct {v1, v3, v4, v5}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->BROWSER:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    .line 158
    new-instance v3, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const-string v5, "REPLACE_CONTENT"

    const/4 v6, 0x2

    const-string v7, "replacement"

    invoke-direct {v3, v5, v6, v7}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->REPLACE_CONTENT:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 150
    sput-object v5, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->$VALUES:[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput-object p3, p0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    .locals 5

    .line 172
    invoke-static {}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->values()[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 173
    iget-object v4, v3, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->text:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    .locals 1

    .line 150
    const-class v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    .locals 1

    .line 150
    sget-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->$VALUES:[Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    invoke-virtual {v0}, [Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    return-object v0
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url_type"

    .line 183
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 185
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->text:Ljava/lang/String;

    return-object v0
.end method
