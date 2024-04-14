.class final Lcom/google/appinventor/components/runtime/Form$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->AddTitleBarIcon(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

.field private synthetic ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

.field private synthetic kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2879
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$5;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$5;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2881
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$5;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleBarIconSelected(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
