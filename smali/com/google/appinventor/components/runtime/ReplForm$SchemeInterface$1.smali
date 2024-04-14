.class final Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->eval(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

.field private synthetic IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 81
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0()V

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;

    const-string v1, "#DONE#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 88
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in scheme processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
