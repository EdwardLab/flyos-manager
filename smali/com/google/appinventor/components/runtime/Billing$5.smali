.class final Lcom/google/appinventor/components/runtime/Billing$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Billing;->startBillingFlow(Lcom/android/billingclient/api/ProductDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/android/billingclient/api/BillingFlowParams;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingFlowParams;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Billing$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Billing$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Billing;->access$200(Lcom/google/appinventor/components/runtime/Billing;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Billing$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Billing;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Billing;->access$500(Lcom/google/appinventor/components/runtime/Billing;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Billing$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method
