.class Lcom/android/packageinstaller/InstallAppProgress$1;
.super Landroid/os/Handler;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 72
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.intent.extra.RETURN_RESULT"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v7, result:Landroid/content/Intent;
    const-string v8, "android.intent.extra.INSTALL_RESULT"

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    const/4 v8, -0x1

    :goto_1
    invoke-virtual {v9, v8, v7}, Lcom/android/packageinstaller/InstallAppProgress;->setResult(ILandroid/content/Intent;)V

    .line 80
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v8, 0x1

    goto :goto_1

    .line 84
    .end local v7           #result:Landroid/content/Intent;
    :cond_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 85
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 86
    .local v6, pkgName:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.lbe.security.intent.PACKAGE_INSTALLED"

    const-string v9, "package"

    const/4 v10, 0x0

    invoke-static {v9, v6, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    .local v4, it:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8, v4}, Lcom/android/packageinstaller/InstallAppProgress;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    goto :goto_0

    .line 94
    .end local v4           #it:Landroid/content/Intent;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    const/4 v0, -0x1

    .line 98
    .local v0, centerExplanationLabel:I
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LevelListDrawable;

    .line 100
    .local v1, centerTextDrawable:Landroid/graphics/drawable/LevelListDrawable;
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 101
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 103
    const v2, 0x7f050007

    .line 105
    .local v2, centerTextLabel:I
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v9}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v10}, Lcom/android/packageinstaller/InstallAppProgress;->access$000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    #setter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v8, v9}, Lcom/android/packageinstaller/InstallAppProgress;->access$302(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, enabled:Z
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 109
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v9}, Lcom/android/packageinstaller/InstallAppProgress;->access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 111
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 112
    const/4 v3, 0x1

    .line 115
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    if-eqz v3, :cond_5

    .line 116
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .end local v3           #enabled:Z
    :goto_2
    if-eqz v1, :cond_4

    .line 131
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/LevelListDrawable;->setBounds(IIII)V

    .line 134
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$600(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_4
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$600(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    const/4 v8, -0x1

    if-eq v0, v8, :cond_8

    .line 138
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_3
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$900(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 118
    .restart local v3       #enabled:Z
    :cond_5
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 120
    .end local v2           #centerTextLabel:I
    .end local v3           #enabled:Z
    :cond_6
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, -0x4

    if-ne v8, v9, :cond_7

    .line 121
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    const/4 v9, 0x1

    #calls: Lcom/android/packageinstaller/InstallAppProgress;->showDialogInner(I)V
    invoke-static {v8, v9}, Lcom/android/packageinstaller/InstallAppProgress;->access$400(Lcom/android/packageinstaller/InstallAppProgress;I)V

    goto/16 :goto_0

    .line 125
    :cond_7
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 126
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v9, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/packageinstaller/InstallAppProgress;->getExplanationFromErrorCode(I)I
    invoke-static {v8, v9}, Lcom/android/packageinstaller/InstallAppProgress;->access$500(Lcom/android/packageinstaller/InstallAppProgress;I)I

    move-result v0

    .line 127
    const v2, 0x7f050009

    .line 128
    .restart local v2       #centerTextLabel:I
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 141
    :cond_8
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    #getter for: Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
