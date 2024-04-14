.class public Lcom/onesignal/OSNotification;
.super Ljava/lang/Object;
.source "OSNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotification$DisplayType;
    }
.end annotation


# instance fields
.field public androidNotificationId:I

.field public displayType:Lcom/onesignal/OSNotification$DisplayType;

.field public groupedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OSNotificationPayload;",
            ">;"
        }
    .end annotation
.end field

.field public isAppInFocus:Z

.field public payload:Lcom/onesignal/OSNotificationPayload;

.field public shown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "isAppInFocus"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    .line 75
    iget-boolean v0, p0, Lcom/onesignal/OSNotification;->shown:Z

    const-string v1, "shown"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OSNotification;->shown:Z

    const-string v0, "androidNotificationId"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/onesignal/OSNotification;->androidNotificationId:I

    .line 77
    invoke-static {}, Lcom/onesignal/OSNotification$DisplayType;->values()[Lcom/onesignal/OSNotification$DisplayType;

    move-result-object v0

    const-string v1, "displayType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    const-string v0, "groupedNotifications"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    const/4 v1, 0x0

    .line 82
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    new-instance v3, Lcom/onesignal/OSNotificationPayload;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/onesignal/OSNotificationPayload;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "payload"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-instance v1, Lcom/onesignal/OSNotificationPayload;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/onesignal/OSNotificationPayload;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    :cond_1
    return-void
.end method


# virtual methods
.method public stringify()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "additionalData"

    .line 113
    invoke-virtual {p0}, Lcom/onesignal/OSNotification;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isAppInFocus"

    .line 130
    iget-boolean v2, p0, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "shown"

    .line 131
    iget-boolean v2, p0, Lcom/onesignal/OSNotification;->shown:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "androidNotificationId"

    .line 132
    iget v2, p0, Lcom/onesignal/OSNotification;->androidNotificationId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "displayType"

    .line 133
    iget-object v2, p0, Lcom/onesignal/OSNotification;->displayType:Lcom/onesignal/OSNotification$DisplayType;

    invoke-virtual {v2}, Lcom/onesignal/OSNotification$DisplayType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    iget-object v1, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/onesignal/OSNotification;->groupedNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSNotificationPayload;

    .line 138
    invoke-virtual {v3}, Lcom/onesignal/OSNotificationPayload;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "groupedNotifications"

    .line 139
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "payload"

    .line 142
    iget-object v2, p0, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    invoke-virtual {v2}, Lcom/onesignal/OSNotificationPayload;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 145
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method
