.class final Lcom/google/appinventor/components/runtime/Billing$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Billing$8;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing$8;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Billing$8;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$8$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$8$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing$8;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/Billing;->access$000(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingResult;)Z

    move-result p1

    .line 162
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Consume response: BillingResult = "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KodularBilling"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$8$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing$8;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Billing$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing$8$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing$8;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Billing$8;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/google/appinventor/components/runtime/Billing;->Consumed(ZLjava/lang/String;)V

    return-void
.end method
