.class Lcom/onesignal/InAppMessageView$7;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/InAppMessageView;->createAnimationListenerForAndroidApi23Elevation(Landroidx/cardview/widget/CardView;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/InAppMessageView;

.field final synthetic val$messageViewCardView:Landroidx/cardview/widget/CardView;


# direct methods
.method constructor <init>(Lcom/onesignal/InAppMessageView;Landroidx/cardview/widget/CardView;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/onesignal/InAppMessageView$7;->this$0:Lcom/onesignal/InAppMessageView;

    iput-object p2, p0, Lcom/onesignal/InAppMessageView$7;->val$messageViewCardView:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 519
    iget-object p1, p0, Lcom/onesignal/InAppMessageView$7;->val$messageViewCardView:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
