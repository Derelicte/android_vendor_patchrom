.class public Landroid/support/v13/dreams/BasicDream;
.super Landroid/app/Activity;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BasicDream"


# instance fields
.field private mPlugged:Z

.field private final mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v13/dreams/BasicDream;->mPlugged:Z

    new-instance v0, Landroid/support/v13/dreams/BasicDream$1;

    invoke-direct {v0, p0}, Landroid/support/v13/dreams/BasicDream$1;-><init>(Landroid/support/v13/dreams/BasicDream;)V

    iput-object v0, p0, Landroid/support/v13/dreams/BasicDream;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v13/dreams/BasicDream;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v13/dreams/BasicDream;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Landroid/support/v13/dreams/BasicDream;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v13/dreams/BasicDream;->mPlugged:Z

    return p1
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v13/dreams/BasicDream;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected invalidate()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "BasicDream"

    const-string v1, "exiting onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/support/v13/dreams/BasicDream$BasicDreamView;

    invoke-direct {v0, p0, p0}, Landroid/support/v13/dreams/BasicDream$BasicDreamView;-><init>(Landroid/support/v13/dreams/BasicDream;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/support/v13/dreams/BasicDream;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v13/dreams/BasicDream;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/support/v13/dreams/BasicDream;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Landroid/support/v13/dreams/BasicDream;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/support/v13/dreams/BasicDream;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    const-string v0, "BasicDream"

    const-string v1, "exiting onUserInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->finish()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v13/dreams/BasicDream;->mView:Landroid/view/View;

    return-void
.end method
