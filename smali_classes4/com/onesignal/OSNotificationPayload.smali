.class public Lcom/onesignal/OSNotificationPayload;
.super Ljava/lang/Object;
.source "OSNotificationPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;,
        Lcom/onesignal/OSNotificationPayload$ActionButton;
    }
.end annotation


# instance fields
.field public actionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSNotificationPayload$ActionButton;",
            ">;"
        }
    .end annotation
.end field

.field public additionalData:Lorg/json/JSONObject;

.field public backgroundImageLayout:Lcom/onesignal/OSNotificationPayload$BackgroundImageLayout;

.field public bigPicture:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public collapseId:Ljava/lang/String;

.field public fromProjectNumber:Ljava/lang/String;

.field public groupKey:Ljava/lang/String;

.field public groupMessage:Ljava/lang/String;

.field public largeIcon:Ljava/lang/String;

.field public launchURL:Ljava/lang/String;

.field public ledColor:Ljava/lang/String;

.field public lockScreenVisibility:I

.field public notificationID:Ljava/lang/String;

.field public priority:I

.field public rawPayload:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;

.field public smallIconAccentColor:Ljava/lang/String;

.field public sound:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public templateName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    const-string v0, "notificationID"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    const-string v0, "title"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    const-string v0, "body"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    const-string v0, "additionalData"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const-string v0, "smallIcon"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    const-string v0, "largeIcon"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    const-string v0, "bigPicture"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    const-string v0, "smallIconAccentColor"

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    const-string v0, "launchURL"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    const-string v0, "sound"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    const-string v0, "ledColor"

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    const-string v0, "lockScreenVisibility"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    const-string v0, "groupKey"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    const-string v0, "groupMessage"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    const-string v0, "actionButtons"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    new-instance v3, Lcom/onesignal/OSNotificationPayload$ActionButton;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onesignal/OSNotificationPayload$ActionButton;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "fromProjectNumber"

    .line 93
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    const-string v0, "collapseId"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;

    const-string v0, "priority"

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/onesignal/OSNotificationPayload;->priority:I

    const-string v0, "rawPayload"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "notificationID"

    .line 144
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->notificationID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 145
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    .line 146
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    iget-object v1, p0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "additionalData"

    .line 148
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "smallIcon"

    .line 149
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->smallIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "largeIcon"

    .line 150
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->largeIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bigPicture"

    .line 151
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->bigPicture:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "smallIconAccentColor"

    .line 152
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->smallIconAccentColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "launchURL"

    .line 153
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sound"

    .line 154
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->sound:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ledColor"

    .line 155
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->ledColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lockScreenVisibility"

    .line 156
    iget v2, p0, Lcom/onesignal/OSNotificationPayload;->lockScreenVisibility:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "groupKey"

    .line 157
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->groupKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "groupMessage"

    .line 158
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->groupMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-object v1, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 161
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 162
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->actionButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSNotificationPayload$ActionButton;

    .line 163
    invoke-virtual {v3}, Lcom/onesignal/OSNotificationPayload$ActionButton;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "actionButtons"

    .line 165
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "fromProjectNumber"

    .line 167
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->fromProjectNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "collapseId"

    .line 168
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->collapseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priority"

    .line 169
    iget v2, p0, Lcom/onesignal/OSNotificationPayload;->priority:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rawPayload"

    .line 171
    iget-object v2, p0, Lcom/onesignal/OSNotificationPayload;->rawPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v0
.end method
