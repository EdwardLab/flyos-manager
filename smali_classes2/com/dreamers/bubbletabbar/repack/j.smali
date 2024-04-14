.class final synthetic Lcom/dreamers/bubbletabbar/repack/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/repack/j;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/j;->a:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/dreamers/bubbletabbar/repack/h;->a(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
