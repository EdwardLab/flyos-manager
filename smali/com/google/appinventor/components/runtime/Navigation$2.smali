.class final Lcom/google/appinventor/components/runtime/Navigation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

.field private synthetic l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Lcom/google/appinventor/components/runtime/util/YailList;

.field private synthetic mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Lcom/google/appinventor/components/runtime/util/YailList;

.field private synthetic moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:D

.field private synthetic tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:D

    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 382
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:D

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Navigation$2;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:D

    invoke-virtual/range {v2 .. v8}, Lcom/google/appinventor/components/runtime/Navigation;->GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    return-void
.end method
