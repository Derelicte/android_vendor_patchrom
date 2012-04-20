.class public Lcom/android/contacts/activities/UnknownContactActivity;
.super Landroid/app/Activity;
.source "UnknownContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/detail/UnknownContactFragment$Listener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAddress:Ljava/lang/String;

.field private mFragment:Lcom/android/contacts/detail/UnknownContactFragment;

.field private mHomeKey:Landroid/widget/ImageView;

.field private mLocation:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhoto:Landroid/widget/ImageView;

.field private mShowCustom:Z

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mNumber:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mLocation:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 90
    instance-of v0, p1, Lcom/android/contacts/detail/UnknownContactFragment;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lcom/android/contacts/detail/UnknownContactFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mFragment:Lcom/android/contacts/detail/UnknownContactFragment;

    .line 93
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mFragment:Lcom/android/contacts/detail/UnknownContactFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/detail/UnknownContactFragment;->loadCalllog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mFragment:Lcom/android/contacts/detail/UnknownContactFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/UnknownContactFragment;->loadEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->finish()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x7f070065
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f070068

    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "number"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "number"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mNumber:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mNumber:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mLocation:Ljava/lang/String;

    .line 56
    :goto_0
    const v2, 0x7f0400a2

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/UnknownContactActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    .line 59
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mShowCustom:Z

    .line 62
    iget-boolean v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mShowCustom:Z

    if-eqz v2, :cond_4

    .line 63
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/UnknownContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 64
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, customActionBarView:Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const v2, 0x7f070066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mTitle:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f070067

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mSubTitle:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mHomeKey:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mPhoto:Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mHomeKey:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 75
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v0           #customActionBarView:Landroid/view/View;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_2
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mFragment:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v2, p0}, Lcom/android/contacts/detail/UnknownContactFragment;->setListener(Lcom/android/contacts/detail/UnknownContactFragment$Listener;)V

    .line 86
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->finish()V

    goto/16 :goto_0

    .line 60
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 80
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/UnknownContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mPhoto:Landroid/widget/ImageView;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/UnknownContactActivity;->finish()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setNameAndPhoto(Landroid/util/Pair;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, spInfo:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-nez p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x302004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mShowCustom:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0b01c5

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/UnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mSubTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/UnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    iget-boolean v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mShowCustom:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mTitle:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mSubTitle:Landroid/widget/TextView;

    const v1, 0x7f0b01fa

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/UnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/UnknownContactActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
