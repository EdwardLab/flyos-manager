.class final Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB$4;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->WebServiceError(Ljava/lang/String;)V

    return-void
.end method
