.class final Lcom/google/appinventor/components/runtime/Billing$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Billing;->CheckPurchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

.field private synthetic zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$9;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Billing$9;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Billing;->access$000(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingResult;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Billing;->access$100(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Billing$9;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 188
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$9;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing$9;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Billing;->GotPurchaseResult(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$9;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Billing$9;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/appinventor/components/runtime/Billing;->GotPurchaseResult(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
