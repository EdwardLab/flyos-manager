.class final Lcom/google/appinventor/components/runtime/Billing$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Billing;->Consume(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$8;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Billing;->access$000(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingResult;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Billing;->access$100(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Billing$8;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/Billing;->access$400(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/Purchase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Billing;->access$200(Lcom/google/appinventor/components/runtime/Billing;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p2

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$8$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Billing$8$1;-><init>(Lcom/google/appinventor/components/runtime/Billing$8;)V

    invoke-virtual {p2, p1, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$8;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/appinventor/components/runtime/Billing;->Consumed(ZLjava/lang/String;)V

    :cond_3
    return-void

    .line 147
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$8;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/appinventor/components/runtime/Billing;->Consumed(ZLjava/lang/String;)V

    return-void
.end method
