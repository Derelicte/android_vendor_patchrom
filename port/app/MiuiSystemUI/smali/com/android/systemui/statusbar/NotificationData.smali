.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFilterBlacklist:Z

.field private mIsFilterEnabled:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntryCmp:Ljava/util/Comparator;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilterList:Ljava/util/HashSet;

    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mContext:Landroid/content/Context;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 173
    return-void
.end method

.method private update(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v0, v3, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 185
    .local v0, pkg:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mIsFilterEnabled:Z

    if-eqz v3, :cond_3

    .line 187
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mIsFilterBlacklist:Z

    if-eqz v3, :cond_0

    .line 189
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->canBeHidden:Z

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilterList:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHidden:Z

    .line 208
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, v3}, Lcom/android/systemui/settings/NotificationFilterHelper;->isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->canBeHidden:Z

    .line 195
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHidden:Z

    goto :goto_0

    .line 199
    :cond_1
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->canBeHidden:Z

    .line 200
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilterList:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHidden:Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 205
    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->canBeHidden:Z

    .line 206
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHidden:Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 4
    .parameter "entry"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntryCmp:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->update(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    return v1

    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 3
    .parameter "key"

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 85
    .local v0, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 89
    .end local v0           #e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .parameter "i"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public hasClearableItems()Z
    .locals 3

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 149
    .local v0, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v2, 0x1

    .line 155
    .end local v0           #e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasVisibleItems(Z)Z
    .locals 3
    .parameter "includeHidden"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 136
    .local v0, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHidden:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    if-nez v2, :cond_0

    .line 138
    :cond_1
    const/4 v2, 0x1

    .line 141
    .end local v0           #e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOf(Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 1
    .parameter "entry"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public markAllSeen()Z
    .locals 4

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 162
    .local v0, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    if-nez v3, :cond_0

    .line 163
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    .line 164
    const/4 v2, 0x1

    goto :goto_0

    .line 167
    .end local v0           #e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    return v2
.end method

.method public remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2
    .parameter "key"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 125
    .local v0, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toggleFilterSetting(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mIsFilterBlacklist:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHidden:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilterList:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mIsFilterBlacklist:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilterList:Ljava/util/HashSet;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/settings/NotificationFilterHelper;->setFilterList(Landroid/content/ContentResolver;ZLjava/util/HashSet;)V

    .line 222
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilterList:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateFilterSetting()V
    .locals 5

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 226
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/settings/NotificationFilterHelper;->isEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mIsFilterEnabled:Z

    .line 227
    invoke-static {v2}, Lcom/android/systemui/settings/NotificationFilterHelper;->isBlacklistMode(Landroid/content/ContentResolver;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mIsFilterBlacklist:Z

    .line 228
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mIsFilterBlacklist:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilterList:Ljava/util/HashSet;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/settings/NotificationFilterHelper;->getFilterList(Landroid/content/ContentResolver;ZLjava/util/HashSet;)V

    .line 230
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 231
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->update(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0

    .line 233
    .end local v0           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    return-void
.end method
