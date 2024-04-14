.class final Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

.field private synthetic BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

.field private synthetic IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

.field private synthetic joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    iput p3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    iput p4, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    iget v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->IpCDSeDtSQ9aVIFHrTV0geVthcfgimpo1gHNFztT9EKnCqzMmr52GQEFh7mXSGc2:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    return-void
.end method
