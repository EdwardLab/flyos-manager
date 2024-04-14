.class final Lcom/google/appinventor/components/runtime/EventDispatcher$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Ljava/lang/String;

.field final lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    check-cast p1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    .line 44
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
