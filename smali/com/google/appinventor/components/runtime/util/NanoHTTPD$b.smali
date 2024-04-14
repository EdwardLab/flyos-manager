.class final Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;B)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    .line 320
    new-instance v6, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v0, "biggerstack"

    invoke-direct {v1, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    const-string v3, "HTTPD Session"

    const-wide/32 v4, 0x40000

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 321
    invoke-virtual {v6, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v6
.end method
