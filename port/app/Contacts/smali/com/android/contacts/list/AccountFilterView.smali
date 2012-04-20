.class public Lcom/android/contacts/list/AccountFilterView;
.super Landroid/widget/LinearLayout;
.source "AccountFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;,
        Lcom/android/contacts/list/AccountFilterView$AccountClickListener;,
        Lcom/android/contacts/list/AccountFilterView$FilterListAdapter;,
        Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;,
        Lcom/android/contacts/list/AccountFilterView$FilterLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mAccountCount:I


# instance fields
.field private mAccountLoadFinishListener:Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;

.field private mAccountName:Landroid/widget/TextView;

.field private mArrowMark:Landroid/widget/ImageView;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private final mContext:Landroid/content/Context;

.field private mCountText:Landroid/widget/TextView;

.field private mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mLoaderListener:Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;

.field private mPopup:Landroid/widget/ListPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/contacts/list/AccountFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/AccountFilterView;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/contacts/list/AccountFilterView;->mAccountCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterView;Lcom/android/contacts/list/AccountFilterView$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mLoaderListener:Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;

    .line 62
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 64
    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 66
    invoke-direct {p0}, Lcom/android/contacts/list/AccountFilterView;->initResources()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/contacts/list/AccountFilterView;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/AccountFilterView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/contacts/list/AccountFilterView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountLoadFinishListener:Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/AccountFilterView;Lcom/android/contacts/list/ContactListFilter;Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/AccountFilterView;->localCompareFilters(Lcom/android/contacts/list/ContactListFilter;Lcom/android/contacts/list/ContactListFilter;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/list/AccountFilterView;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method private initResources()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 71
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/android/contacts/list/AccountFilterView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/AccountFilterView$1;-><init>(Lcom/android/contacts/list/AccountFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/android/contacts/list/AccountFilterView$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/AccountFilterView$2;-><init>(Lcom/android/contacts/list/AccountFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/AccountFilterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getAccountWithCount(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v4

    .line 259
    .local v4, accountWithCount:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 260
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    .local v1, accountFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 262
    .local v3, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v5

    .line 263
    .local v5, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 264
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v9, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 266
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 270
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 271
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v9, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v9, v10, v11, v7, v12}, Lcom/android/contacts/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 277
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_2
    const/4 v9, -0x2

    invoke-static {v9}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sput v9, Lcom/android/contacts/list/AccountFilterView;->mAccountCount:I

    .line 281
    sget v9, Lcom/android/contacts/list/AccountFilterView;->mAccountCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 282
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 285
    :cond_3
    return-object v8
.end method

.method private localCompareFilters(Lcom/android/contacts/list/ContactListFilter;Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 1
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 357
    if-ne p1, p2, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 360
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateAccountView()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 155
    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/AccountFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 158
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/AccountFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 161
    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/AccountFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    .line 162
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    const v4, 0x7f020016

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-nez v2, :cond_3

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 225
    :goto_1
    return-void

    :cond_3
    move v2, v3

    .line 163
    goto :goto_0

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v2, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 222
    :goto_2
    :pswitch_0
    sget v2, Lcom/android/contacts/list/AccountFilterView;->mAccountCount:I

    if-le v2, v0, :cond_7

    .line 223
    .local v0, filterEnable:Z
    :goto_3
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/AccountFilterView;->setEnabled(Z)V

    goto :goto_1

    .line 173
    .end local v0           #filterEnable:Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f02007d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    const v4, 0x7f0b016e

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 178
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020099

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    const v4, 0x7f0b016f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 183
    :pswitch_3
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020095

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    const v4, 0x7f0b0171

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 188
    :pswitch_4
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    const v4, 0x7f0b0172

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 193
    :pswitch_5
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    const v4, 0x7f0b0173

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 198
    :pswitch_6
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 199
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :goto_5
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/AccountFilterView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v6, v6, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/contacts/ContactsUtils;->getAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 201
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_6

    .line 205
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f0200f5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 207
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 216
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :pswitch_7
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f02007f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 222
    goto/16 :goto_3

    .line 223
    .restart local v0       #filterEnable:Z
    :cond_8
    const/4 v3, 0x4

    goto/16 :goto_4

    .line 171
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public initLoader(Landroid/app/LoaderManager;I)V
    .locals 2
    .parameter "loadManager"
    .parameter "id"

    .prologue
    .line 94
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView;->mLoaderListener:Lcom/android/contacts/list/AccountFilterView$MyLoaderCallbacks;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 95
    return-void
.end method

.method public setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V
    .locals 2
    .parameter "clfc"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 100
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/contacts/list/AccountFilterView$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/AccountFilterView$3;-><init>(Lcom/android/contacts/list/AccountFilterView;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/AccountFilterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/AccountFilterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCountString(Ljava/lang/String;)V
    .locals 1
    .parameter "count"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mCountText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 130
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/AccountFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mCountText:Landroid/widget/TextView;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mCountText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    return-void
.end method

.method public setCurrentFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 125
    invoke-direct {p0}, Lcom/android/contacts/list/AccountFilterView;->updateAccountView()V

    .line 126
    return-void
.end method

.method public setDropdownArrow(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView;->mArrowMark:Landroid/widget/ImageView;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnAccountLoadFinishListener(Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView;->mAccountLoadFinishListener:Lcom/android/contacts/list/AccountFilterView$AccountLoadFinishListener;

    .line 151
    return-void
.end method
