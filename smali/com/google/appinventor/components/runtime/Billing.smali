.class public Lcom/google/appinventor/components/runtime/Billing;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Play In-App Billing component"
    helpUrl = "https://docs.kodular.io/components/monetization/in-app-billing/"
    iconName = "images/billing.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesApplicationMetadata;
    metaDataElements = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/MetaDataElement;
            name = "com.google.android.play.billingclient.version"
            value = "5.2.1"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "play-billing.aar",
        "play-billing.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "com.android.vending.BILLING",
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KodularBilling"

.field private static final TEST_PRODUCT_ID:Ljava/lang/String; = "android.test.purchased"


# instance fields
.field private activity:Landroid/app/Activity;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private context:Landroid/content/Context;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    .line 65
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->context:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    .line 68
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Billing;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 74
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    const-string p1, "KodularBilling"

    const-string v0, "Billing Created"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingResult;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/util/List;)Z
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Billing;->isListNonNullAndNotEmpty(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Billing;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Billing;->startBillingFlow(Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/Purchase;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Billing;->isPurchased(Lcom/android/billingclient/api/Purchase;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Billing;)Landroid/app/Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private getQueryProductDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams;
    .locals 2

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 386
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 387
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 385
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 391
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    return-object p1
.end method

.method private getQueryPurchaseHistoryParams(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams;
    .locals 1

    .line 402
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object p1

    return-object p1
.end method

.method private getQueryPurchasesParams(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams;
    .locals 1

    .line 396
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    return-object p1
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 425
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Billing;->isPurchased(Lcom/android/billingclient/api/Purchase;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/google/appinventor/components/runtime/Billing$6;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/Billing$6;-><init>(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    :cond_0
    return-void
.end method

.method private isFeatureSupported(Ljava/lang/String;)Z
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z

    move-result p1

    return p1
.end method

.method private static isListNonNullAndNotEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 380
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPurchased(Lcom/android/billingclient/api/Purchase;)Z
    .locals 1

    .line 376
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z
    .locals 0

    .line 368
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startBillingFlow(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 3

    .line 408
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 412
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 413
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Billing$5;-><init>(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingFlowParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public AfterPurchase(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After purchase event."
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$12;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Billing$12;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CheckPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 180
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Billing;->getQueryPurchasesParams(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/google/appinventor/components/runtime/Billing$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Billing$9;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public Consume(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Consumes a purchase to enable users to buy it again."
    .end annotation

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Consuming purchase: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularBilling"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 140
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    .line 141
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Billing$8;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/Billing$8;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public Consumed(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When product is consumed."
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Billing$13;-><init>(Lcom/google/appinventor/components/runtime/Billing;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error occurred event."
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Billing$11;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotOwnedPurchases(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got Owned Purchases"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Billing$3;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotProductDetails(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got Product Details"
    .end annotation

    move-object v8, p0

    .line 303
    iget-object v9, v8, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/google/appinventor/components/runtime/Billing$14;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Billing$14;-><init>(Lcom/google/appinventor/components/runtime/Billing;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotPurchaseResult(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers with the result of IsPurchased"
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Billing$4;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GotSubscriptionDetails(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got Subscription Details"
    .end annotation

    move-object v9, p0

    .line 315
    iget-object v10, v9, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v11, Lcom/google/appinventor/components/runtime/Billing$2;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Billing$2;-><init>(Lcom/google/appinventor/components/runtime/Billing;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Do not use this block anymore. This block is deprecated and does nothing and will be removed in the future!"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public IsIabServiceAvailable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Check Play Market services availability."
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    return v0
.end method

.method public IsOneTimePurchaseSupported()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is one time purchase supported."
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public IsPurchased(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the product with the specific id is purchased."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public IsSubscribed(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the product is subscribed."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public IsSubscriptionUpdateSupported()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is subscription update supported."
    .end annotation

    const-string v0, "subscriptionsUpdate"

    .line 250
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Billing;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsSubscriptionsSupported()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is subscriptions supported."
    .end annotation

    const-string v0, "subscriptions"

    .line 245
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Billing;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public LoadOwnedPurchases()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load Owned Purchases from Google."
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "inapp"

    .line 86
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Billing;->getQueryPurchaseHistoryParams(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object v2

    const-string v3, "subs"

    .line 87
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/Billing;->getQueryPurchaseHistoryParams(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object v3

    .line 89
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v5, Lcom/google/appinventor/components/runtime/Billing$1;

    invoke-direct {v5, p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Billing$1;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/util/List;Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Ljava/util/List;)V

    invoke-virtual {v4, v2, v5}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    const-string v0, "KodularBilling"

    const-string v1, "Load Owned Purchases called"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ProductDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get product details from the specific product id. Product type can be either inapp or subs."
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductDetails: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularBilling"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Billing;->getQueryProductDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    new-instance v1, Lcom/google/appinventor/components/runtime/Billing$10;

    invoke-direct {v1, p0, p2}, Lcom/google/appinventor/components/runtime/Billing$10;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method public Purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Purchase a product with the given product id."
    .end annotation

    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Purchase: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularBilling"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    if-eqz v0, :cond_0

    const-string p1, "android.test.purchased"

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Billing;->getQueryProductDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Billing$7;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Billing$7;-><init>(Lcom/google/appinventor/components/runtime/Billing;)V

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method public ReadyToPurchase()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether In-app billing service is ready to purchase."
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    return v0
.end method

.method public Subscribe(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Subscribe a product with the given product id."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SubscriptionDetails(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get subscription details from the given id."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SuppressToast(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SuppressToast()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Do not use this block anymore. This block is deprecated and does nothing and will be removed in the future!"
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 256
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether it is testing mode enabled or not."
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    return v0
.end method

.method public UpdateSubscription(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Do not use this block anymore. This block is deprecated and does nothing and will be removed in the future!"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 358
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Billing;->isListNonNullAndNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 360
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Billing;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_0
    return-void
.end method
