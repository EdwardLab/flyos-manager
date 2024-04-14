.class final Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 252
    :goto_0
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void
.end method
