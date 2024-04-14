.class final Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->AfterAction(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

.field private synthetic fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;

.field private synthetic pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "AfterAction"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
