.class Lcom/onesignal/OSInAppMessage;
.super Ljava/lang/Object;
.source "OSInAppMessage.java"


# static fields
.field private static final DISPLAY_DURATION:Ljava/lang/String; = "display_duration"

.field private static final END_TIME:Ljava/lang/String; = "end_time"

.field private static final IAM_ID:Ljava/lang/String; = "id"

.field private static final IAM_REDISPLAY_STATS:Ljava/lang/String; = "redisplay"

.field private static final IAM_TRIGGERS:Ljava/lang/String; = "triggers"

.field private static final IAM_VARIANTS:Ljava/lang/String; = "variants"


# instance fields
.field private actionTaken:Z

.field private clickedClickIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayDuration:D

.field private displayedInSession:Z

.field private endTime:Ljava/util/Date;

.field isPreview:Z

.field public messageId:Ljava/lang/String;

.field private redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

.field private triggerChanged:Z

.field public triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;>;"
        }
    .end annotation
.end field

.field public variants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;ZLcom/onesignal/OSInAppMessageRedisplayStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/onesignal/OSInAppMessageRedisplayStats;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 73
    iput-object p1, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 75
    iput-boolean p3, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 76
    iput-object p4, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 63
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    const-string v0, "id"

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    const-string v0, "variants"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSInAppMessage;->parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    const-string v0, "triggers"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessage;->parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 85
    invoke-direct {p0, p1}, Lcom/onesignal/OSInAppMessage;->parseEndTimeJson(Lorg/json/JSONObject;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->endTime:Ljava/util/Date;

    const-string v0, "redisplay"

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    :cond_0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    .line 63
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    .line 69
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    return-void
.end method

.method private parseEndTimeJson(Lorg/json/JSONObject;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "end_time"

    .line 94
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "null"

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 103
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/onesignal/OneSignalSimpleDateFormat;->iso8601Format()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 104
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :catch_1
    return-object v0
.end method

.method private parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 119
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 122
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 124
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method addClickId(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearClickIds()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    check-cast p1, Lcom/onesignal/OSInAppMessage;

    .line 277
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    iget-object p1, p1, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method getClickedClickIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    return-object v0
.end method

.method getDisplayDuration()D
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    return-wide v0
.end method

.method getRedisplayStats()Lcom/onesignal/OSInAppMessageRedisplayStats;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isClickAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isDisplayedInSession()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/onesignal/OSInAppMessage;->endTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->endTime:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method isTriggerChanged()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    return v0
.end method

.method protected parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OSTrigger;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 138
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 140
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 141
    new-instance v6, Lcom/onesignal/OSTrigger;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/onesignal/OSTrigger;-><init>(Lorg/json/JSONObject;)V

    .line 142
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method setDisplayDuration(D)V
    .locals 0

    .line 211
    iput-wide p1, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    return-void
.end method

.method public setDisplayedInSession(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    return-void
.end method

.method setRedisplayStats(IJ)V
    .locals 1

    .line 252
    new-instance v0, Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-direct {v0, p1, p2, p3}, Lcom/onesignal/OSInAppMessageRedisplayStats;-><init>(IJ)V

    iput-object v0, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    return-void
.end method

.method setTriggerChanged(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    return-void
.end method

.method takeActionAsUnique()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 9

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 154
    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    iget-object v4, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 159
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 161
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 162
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v2, "variants"

    .line 167
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "display_duration"

    .line 168
    iget-wide v2, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "redisplay"

    .line 169
    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRedisplayStats;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 173
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 175
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onesignal/OSTrigger;

    .line 176
    invoke-virtual {v5}, Lcom/onesignal/OSTrigger;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 178
    :cond_2
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string v2, "triggers"

    .line 181
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->endTime:Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 184
    invoke-static {}, Lcom/onesignal/OneSignalSimpleDateFormat;->iso8601Format()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/onesignal/OSInAppMessage;->endTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_time"

    .line 186
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 190
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessage{messageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", variants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->variants:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", triggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->triggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickedClickIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redisplayStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->redisplayStats:Lcom/onesignal/OSInAppMessageRedisplayStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/OSInAppMessage;->displayDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", displayedInSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->displayedInSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", triggerChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->triggerChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", actionTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->actionTaken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessage;->endTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
