.class public Lcom/onesignal/OSInAppMessageAction;
.super Ljava/lang/Object;
.source "OSInAppMessageAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;
    }
.end annotation


# static fields
.field private static final CLICK_NAME:Ljava/lang/String; = "click_name"

.field private static final CLICK_URL:Ljava/lang/String; = "click_url"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CLOSES_MESSAGE:Ljava/lang/String; = "closes_message"

.field private static final FIRST_CLICK:Ljava/lang/String; = "first_click"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final OUTCOMES:Ljava/lang/String; = "outcomes"

.field private static final PROMPTS:Ljava/lang/String; = "prompts"

.field private static final TAGS:Ljava/lang/String; = "tags"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final URL_TARGET:Ljava/lang/String; = "url_target"


# instance fields
.field clickId:Ljava/lang/String;

.field public clickName:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public closesMessage:Z

.field public firstClick:Z

.field public outcomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;"
        }
    .end annotation
.end field

.field public prompts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessagePrompt;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Lcom/onesignal/OSInAppMessageTag;

.field public urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    const-string v0, "id"

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickId:Ljava/lang/String;

    const-string v0, "name"

    .line 85
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickName:Ljava/lang/String;

    const-string v0, "url"

    .line 86
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    const-string v0, "url_target"

    .line 87
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->fromString(Ljava/lang/String;)Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;->IN_APP_WEBVIEW:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    iput-object v0, p0, Lcom/onesignal/OSInAppMessageAction;->urlTarget:Lcom/onesignal/OSInAppMessageAction$OSInAppMessageActionUrlType;

    :cond_0
    const/4 v0, 0x1

    const-string v1, "close"

    .line 91
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageAction;->closesMessage:Z

    const-string v0, "outcomes"

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageAction;->parseOutcomes(Lorg/json/JSONObject;)V

    :cond_1
    const-string v0, "tags"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    new-instance v1, Lcom/onesignal/OSInAppMessageTag;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onesignal/OSInAppMessageTag;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    :cond_2
    const-string v0, "prompts"

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessageAction;->parsePrompts(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method private parseOutcomes(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "outcomes"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    new-instance v2, Lcom/onesignal/OSInAppMessageOutcome;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lcom/onesignal/OSInAppMessageOutcome;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parsePrompts(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "prompts"

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->prompts:Ljava/util/List;

    new-instance v2, Lcom/onesignal/OSInAppMessageLocationPrompt;

    invoke-direct {v2}, Lcom/onesignal/OSInAppMessageLocationPrompt;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "click_name"

    .line 122
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->clickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "click_url"

    .line 123
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "first_click"

    .line 124
    iget-boolean v2, p0, Lcom/onesignal/OSInAppMessageAction;->firstClick:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "closes_message"

    .line 125
    iget-boolean v2, p0, Lcom/onesignal/OSInAppMessageAction;->closesMessage:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/onesignal/OSInAppMessageAction;->outcomes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSInAppMessageOutcome;

    .line 129
    invoke-virtual {v3}, Lcom/onesignal/OSInAppMessageOutcome;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "outcomes"

    .line 131
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageAction;->tags:Lcom/onesignal/OSInAppMessageTag;

    if-eqz v1, :cond_1

    const-string v2, "tags"

    .line 134
    invoke-virtual {v1}, Lcom/onesignal/OSInAppMessageTag;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method
