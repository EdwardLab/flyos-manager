.class public Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "StartServiceLog.java"


# static fields
.field private static final IS_ONE_COLLECTOR_ENABLED:Ljava/lang/String; = "isOneCollectorEnabled"

.field private static final SERVICES:Ljava/lang/String; = "services"

.field public static final TYPE:Ljava/lang/String; = "startService"


# instance fields
.field private isOneCollectorEnabled:Ljava/lang/Boolean;

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->isOneCollectorEnabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 98
    :cond_2
    check-cast p1, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;

    .line 99
    iget-object v2, p0, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    iget-object p1, p1, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "startService"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isOneCollectorEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->isOneCollectorEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public oneCollectorEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnabled"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->isOneCollectorEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->read(Lorg/json/JSONObject;)V

    const-string v0, "services"

    .line 75
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readStringArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->setServices(Ljava/util/List;)V

    const-string v0, "isOneCollectorEnabled"

    .line 76
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->oneCollectorEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "services"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->services:Ljava/util/List;

    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 81
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->write(Lorg/json/JSONStringer;)V

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->getServices()Ljava/util/List;

    move-result-object v0

    const-string v1, "services"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeStringArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 83
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->isOneCollectorEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isOneCollectorEnabled"

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
