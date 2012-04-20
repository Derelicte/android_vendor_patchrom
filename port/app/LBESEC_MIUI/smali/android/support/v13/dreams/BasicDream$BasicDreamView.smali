.class public Landroid/support/v13/dreams/BasicDream$BasicDreamView;
.super Landroid/view/View;


# instance fields
.field final synthetic this$0:Landroid/support/v13/dreams/BasicDream;


# direct methods
.method public constructor <init>(Landroid/support/v13/dreams/BasicDream;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v13/dreams/BasicDream$BasicDreamView;->this$0:Landroid/support/v13/dreams/BasicDream;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v13/dreams/BasicDream;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v13/dreams/BasicDream$BasicDreamView;->this$0:Landroid/support/v13/dreams/BasicDream;

    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v13/dreams/BasicDream$BasicDreamView;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v13/dreams/BasicDream$BasicDreamView;->this$0:Landroid/support/v13/dreams/BasicDream;

    invoke-virtual {v0, p1}, Landroid/support/v13/dreams/BasicDream;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
