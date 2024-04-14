.class public Lcom/onesignal/outcomes/model/OSOutcomeSource;
.super Ljava/lang/Object;
.source "OSOutcomeSource.java"


# static fields
.field private static final DIRECT:Ljava/lang/String; = "direct"

.field private static final INDIRECT:Ljava/lang/String; = "indirect"


# instance fields
.field private directBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

.field private indirectBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;


# direct methods
.method public constructor <init>(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->directBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    .line 20
    iput-object p2, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->indirectBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    return-void
.end method


# virtual methods
.method public getDirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->directBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    return-object v0
.end method

.method public getIndirectBody()Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->indirectBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    return-object v0
.end method

.method public setDirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->directBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    return-object p0
.end method

.method public setIndirectBody(Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/model/OSOutcomeSource;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->indirectBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    return-object p0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->directBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "direct"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->indirectBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "indirect"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSOutcomeSource{directBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->directBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indirectBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/outcomes/model/OSOutcomeSource;->indirectBody:Lcom/onesignal/outcomes/model/OSOutcomeSourceBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
