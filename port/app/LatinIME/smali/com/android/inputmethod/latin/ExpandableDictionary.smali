.class public Lcom/android/inputmethod/latin/ExpandableDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/ExpandableDictionary$1;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;,
        Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    }
.end annotation


# static fields
.field private static final BASE_CHARS:[C


# instance fields
.field private mCodes:[[I

.field private mContext:Landroid/content/Context;

.field private mDicTypeId:I

.field private mInputLength:I

.field private final mLookedUpString:[C

.field private mMaxDepth:I

.field private mRequiresReload:Z

.field private mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

.field private mUpdatingDictionary:Z

.field private mUpdatingLock:Ljava/lang/Object;

.field private mWordBuilder:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 578
    const/16 v0, 0x500

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
        0x80t 0x0t
        0x81t 0x0t
        0x82t 0x0t
        0x83t 0x0t
        0x84t 0x0t
        0x85t 0x0t
        0x86t 0x0t
        0x87t 0x0t
        0x88t 0x0t
        0x89t 0x0t
        0x8at 0x0t
        0x8bt 0x0t
        0x8ct 0x0t
        0x8dt 0x0t
        0x8et 0x0t
        0x8ft 0x0t
        0x90t 0x0t
        0x91t 0x0t
        0x92t 0x0t
        0x93t 0x0t
        0x94t 0x0t
        0x95t 0x0t
        0x96t 0x0t
        0x97t 0x0t
        0x98t 0x0t
        0x99t 0x0t
        0x9at 0x0t
        0x9bt 0x0t
        0x9ct 0x0t
        0x9dt 0x0t
        0x9et 0x0t
        0x9ft 0x0t
        0x20t 0x0t
        0xa1t 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0x20t 0x0t
        0xa9t 0x0t
        0x61t 0x0t
        0xabt 0x0t
        0xact 0x0t
        0xadt 0x0t
        0xaet 0x0t
        0x20t 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x20t 0x0t
        0xbct 0x3t
        0xb6t 0x0t
        0xb7t 0x0t
        0x20t 0x0t
        0x31t 0x0t
        0x6ft 0x0t
        0xbbt 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x33t 0x0t
        0xbft 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0x41t 0x0t
        0xc6t 0x0t
        0x43t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x45t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0x49t 0x0t
        0xd0t 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0x4ft 0x0t
        0xd7t 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x55t 0x0t
        0x59t 0x0t
        0xdet 0x0t
        0x73t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0x61t 0x0t
        0xe6t 0x0t
        0x63t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x65t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0x69t 0x0t
        0xf0t 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0x6ft 0x0t
        0xf7t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x75t 0x0t
        0x79t 0x0t
        0xfet 0x0t
        0x79t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x43t 0x0t
        0x63t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x10t 0x1t
        0x11t 0x1t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0x48t 0x0t
        0x68t 0x0t
        0x26t 0x1t
        0x27t 0x1t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x31t 0x1t
        0x49t 0x0t
        0x69t 0x0t
        0x4at 0x0t
        0x6at 0x0t
        0x4bt 0x0t
        0x6bt 0x0t
        0x38t 0x1t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x41t 0x1t
        0x42t 0x1t
        0x4et 0x0t
        0x6et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0xbct 0x2t
        0x4at 0x1t
        0x4bt 0x1t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x52t 0x1t
        0x53t 0x1t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x66t 0x1t
        0x67t 0x1t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x57t 0x0t
        0x77t 0x0t
        0x59t 0x0t
        0x79t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x5at 0x0t
        0x7at 0x0t
        0x73t 0x0t
        0x80t 0x1t
        0x81t 0x1t
        0x82t 0x1t
        0x83t 0x1t
        0x84t 0x1t
        0x85t 0x1t
        0x86t 0x1t
        0x87t 0x1t
        0x88t 0x1t
        0x89t 0x1t
        0x8at 0x1t
        0x8bt 0x1t
        0x8ct 0x1t
        0x8dt 0x1t
        0x8et 0x1t
        0x8ft 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x93t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x96t 0x1t
        0x97t 0x1t
        0x98t 0x1t
        0x99t 0x1t
        0x9at 0x1t
        0x9bt 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0x4ft 0x0t
        0x6ft 0x0t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0x55t 0x0t
        0x75t 0x0t
        0xb1t 0x1t
        0xb2t 0x1t
        0xb3t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb7t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xbat 0x1t
        0xbbt 0x1t
        0xbct 0x1t
        0xbdt 0x1t
        0xbet 0x1t
        0xbft 0x1t
        0xc0t 0x1t
        0xc1t 0x1t
        0xc2t 0x1t
        0xc3t 0x1t
        0x44t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x4ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x4et 0x0t
        0x4et 0x0t
        0x6et 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xdct 0x0t
        0xfct 0x0t
        0xddt 0x1t
        0xc4t 0x0t
        0xe4t 0x0t
        0x26t 0x2t
        0x27t 0x2t
        0xc6t 0x0t
        0xe6t 0x0t
        0xe4t 0x1t
        0xe5t 0x1t
        0x47t 0x0t
        0x67t 0x0t
        0x4bt 0x0t
        0x6bt 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0xeat 0x1t
        0xebt 0x1t
        0xb7t 0x1t
        0x92t 0x2t
        0x6at 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x64t 0x0t
        0x47t 0x0t
        0x67t 0x0t
        0xf6t 0x1t
        0xf7t 0x1t
        0x4et 0x0t
        0x6et 0x0t
        0xc5t 0x0t
        0xe5t 0x0t
        0xc6t 0x0t
        0xe6t 0x0t
        0xd8t 0x0t
        0xf8t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x41t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x49t 0x0t
        0x69t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x52t 0x0t
        0x72t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x53t 0x0t
        0x73t 0x0t
        0x54t 0x0t
        0x74t 0x0t
        0x1ct 0x2t
        0x1dt 0x2t
        0x48t 0x0t
        0x68t 0x0t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x41t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0x65t 0x0t
        0xd6t 0x0t
        0xf6t 0x0t
        0xd5t 0x0t
        0xf5t 0x0t
        0x4ft 0x0t
        0x6ft 0x0t
        0x2et 0x2t
        0x2ft 0x2t
        0x59t 0x0t
        0x79t 0x0t
        0x34t 0x2t
        0x35t 0x2t
        0x36t 0x2t
        0x37t 0x2t
        0x38t 0x2t
        0x39t 0x2t
        0x3at 0x2t
        0x3bt 0x2t
        0x3ct 0x2t
        0x3dt 0x2t
        0x3et 0x2t
        0x3ft 0x2t
        0x40t 0x2t
        0x41t 0x2t
        0x42t 0x2t
        0x43t 0x2t
        0x44t 0x2t
        0x45t 0x2t
        0x46t 0x2t
        0x47t 0x2t
        0x48t 0x2t
        0x49t 0x2t
        0x4at 0x2t
        0x4bt 0x2t
        0x4ct 0x2t
        0x4dt 0x2t
        0x4et 0x2t
        0x4ft 0x2t
        0x50t 0x2t
        0x51t 0x2t
        0x52t 0x2t
        0x53t 0x2t
        0x54t 0x2t
        0x55t 0x2t
        0x56t 0x2t
        0x57t 0x2t
        0x58t 0x2t
        0x59t 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x84t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x90t 0x2t
        0x91t 0x2t
        0x92t 0x2t
        0x93t 0x2t
        0x94t 0x2t
        0x95t 0x2t
        0x96t 0x2t
        0x97t 0x2t
        0x98t 0x2t
        0x99t 0x2t
        0x9at 0x2t
        0x9bt 0x2t
        0x9ct 0x2t
        0x9dt 0x2t
        0x9et 0x2t
        0x9ft 0x2t
        0xa0t 0x2t
        0xa1t 0x2t
        0xa2t 0x2t
        0xa3t 0x2t
        0xa4t 0x2t
        0xa5t 0x2t
        0xa6t 0x2t
        0xa7t 0x2t
        0xa8t 0x2t
        0xa9t 0x2t
        0xaat 0x2t
        0xabt 0x2t
        0xact 0x2t
        0xadt 0x2t
        0xaet 0x2t
        0xaft 0x2t
        0x68t 0x0t
        0x66t 0x2t
        0x6at 0x0t
        0x72t 0x0t
        0x79t 0x2t
        0x7bt 0x2t
        0x81t 0x2t
        0x77t 0x0t
        0x79t 0x0t
        0xb9t 0x2t
        0xbat 0x2t
        0xbbt 0x2t
        0xbct 0x2t
        0xbdt 0x2t
        0xbet 0x2t
        0xbft 0x2t
        0xc0t 0x2t
        0xc1t 0x2t
        0xc2t 0x2t
        0xc3t 0x2t
        0xc4t 0x2t
        0xc5t 0x2t
        0xc6t 0x2t
        0xc7t 0x2t
        0xc8t 0x2t
        0xc9t 0x2t
        0xcat 0x2t
        0xcbt 0x2t
        0xcct 0x2t
        0xcdt 0x2t
        0xcet 0x2t
        0xcft 0x2t
        0xd0t 0x2t
        0xd1t 0x2t
        0xd2t 0x2t
        0xd3t 0x2t
        0xd4t 0x2t
        0xd5t 0x2t
        0xd6t 0x2t
        0xd7t 0x2t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0xdet 0x2t
        0xdft 0x2t
        0x63t 0x2t
        0x6ct 0x0t
        0x73t 0x0t
        0x78t 0x0t
        0x95t 0x2t
        0xe5t 0x2t
        0xe6t 0x2t
        0xe7t 0x2t
        0xe8t 0x2t
        0xe9t 0x2t
        0xeat 0x2t
        0xebt 0x2t
        0xect 0x2t
        0xedt 0x2t
        0xeet 0x2t
        0xeft 0x2t
        0xf0t 0x2t
        0xf1t 0x2t
        0xf2t 0x2t
        0xf3t 0x2t
        0xf4t 0x2t
        0xf5t 0x2t
        0xf6t 0x2t
        0xf7t 0x2t
        0xf8t 0x2t
        0xf9t 0x2t
        0xfat 0x2t
        0xfbt 0x2t
        0xfct 0x2t
        0xfdt 0x2t
        0xfet 0x2t
        0xfft 0x2t
        0x0t 0x3t
        0x1t 0x3t
        0x2t 0x3t
        0x3t 0x3t
        0x4t 0x3t
        0x5t 0x3t
        0x6t 0x3t
        0x7t 0x3t
        0x8t 0x3t
        0x9t 0x3t
        0xat 0x3t
        0xbt 0x3t
        0xct 0x3t
        0xdt 0x3t
        0xet 0x3t
        0xft 0x3t
        0x10t 0x3t
        0x11t 0x3t
        0x12t 0x3t
        0x13t 0x3t
        0x14t 0x3t
        0x15t 0x3t
        0x16t 0x3t
        0x17t 0x3t
        0x18t 0x3t
        0x19t 0x3t
        0x1at 0x3t
        0x1bt 0x3t
        0x1ct 0x3t
        0x1dt 0x3t
        0x1et 0x3t
        0x1ft 0x3t
        0x20t 0x3t
        0x21t 0x3t
        0x22t 0x3t
        0x23t 0x3t
        0x24t 0x3t
        0x25t 0x3t
        0x26t 0x3t
        0x27t 0x3t
        0x28t 0x3t
        0x29t 0x3t
        0x2at 0x3t
        0x2bt 0x3t
        0x2ct 0x3t
        0x2dt 0x3t
        0x2et 0x3t
        0x2ft 0x3t
        0x30t 0x3t
        0x31t 0x3t
        0x32t 0x3t
        0x33t 0x3t
        0x34t 0x3t
        0x35t 0x3t
        0x36t 0x3t
        0x37t 0x3t
        0x38t 0x3t
        0x39t 0x3t
        0x3at 0x3t
        0x3bt 0x3t
        0x3ct 0x3t
        0x3dt 0x3t
        0x3et 0x3t
        0x3ft 0x3t
        0x0t 0x3t
        0x1t 0x3t
        0x42t 0x3t
        0x13t 0x3t
        0x8t 0x3t
        0x45t 0x3t
        0x46t 0x3t
        0x47t 0x3t
        0x48t 0x3t
        0x49t 0x3t
        0x4at 0x3t
        0x4bt 0x3t
        0x4ct 0x3t
        0x4dt 0x3t
        0x4et 0x3t
        0x4ft 0x3t
        0x50t 0x3t
        0x51t 0x3t
        0x52t 0x3t
        0x53t 0x3t
        0x54t 0x3t
        0x55t 0x3t
        0x56t 0x3t
        0x57t 0x3t
        0x58t 0x3t
        0x59t 0x3t
        0x5at 0x3t
        0x5bt 0x3t
        0x5ct 0x3t
        0x5dt 0x3t
        0x5et 0x3t
        0x5ft 0x3t
        0x60t 0x3t
        0x61t 0x3t
        0x62t 0x3t
        0x63t 0x3t
        0x64t 0x3t
        0x65t 0x3t
        0x66t 0x3t
        0x67t 0x3t
        0x68t 0x3t
        0x69t 0x3t
        0x6at 0x3t
        0x6bt 0x3t
        0x6ct 0x3t
        0x6dt 0x3t
        0x6et 0x3t
        0x6ft 0x3t
        0x70t 0x3t
        0x71t 0x3t
        0x72t 0x3t
        0x73t 0x3t
        0xb9t 0x2t
        0x75t 0x3t
        0x76t 0x3t
        0x77t 0x3t
        0x78t 0x3t
        0x79t 0x3t
        0x20t 0x0t
        0x7bt 0x3t
        0x7ct 0x3t
        0x7dt 0x3t
        0x3bt 0x0t
        0x7ft 0x3t
        0x80t 0x3t
        0x81t 0x3t
        0x82t 0x3t
        0x83t 0x3t
        0x20t 0x0t
        0xa8t 0x0t
        0x91t 0x3t
        0xb7t 0x0t
        0x95t 0x3t
        0x97t 0x3t
        0x99t 0x3t
        0x8bt 0x3t
        0x9ft 0x3t
        0x8dt 0x3t
        0xa5t 0x3t
        0xa9t 0x3t
        0xcat 0x3t
        0x91t 0x3t
        0x92t 0x3t
        0x93t 0x3t
        0x94t 0x3t
        0x95t 0x3t
        0x96t 0x3t
        0x97t 0x3t
        0x98t 0x3t
        0x99t 0x3t
        0x9at 0x3t
        0x9bt 0x3t
        0x9ct 0x3t
        0x9dt 0x3t
        0x9et 0x3t
        0x9ft 0x3t
        0xa0t 0x3t
        0xa1t 0x3t
        0xa2t 0x3t
        0xa3t 0x3t
        0xa4t 0x3t
        0xa5t 0x3t
        0xa6t 0x3t
        0xa7t 0x3t
        0xa8t 0x3t
        0xa9t 0x3t
        0x99t 0x3t
        0xa5t 0x3t
        0xb1t 0x3t
        0xb5t 0x3t
        0xb7t 0x3t
        0xb9t 0x3t
        0xcbt 0x3t
        0xb1t 0x3t
        0xb2t 0x3t
        0xb3t 0x3t
        0xb4t 0x3t
        0xb5t 0x3t
        0xb6t 0x3t
        0xb7t 0x3t
        0xb8t 0x3t
        0xb9t 0x3t
        0xbat 0x3t
        0xbbt 0x3t
        0xbct 0x3t
        0xbdt 0x3t
        0xbet 0x3t
        0xbft 0x3t
        0xc0t 0x3t
        0xc1t 0x3t
        0xc2t 0x3t
        0xc3t 0x3t
        0xc4t 0x3t
        0xc5t 0x3t
        0xc6t 0x3t
        0xc7t 0x3t
        0xc8t 0x3t
        0xc9t 0x3t
        0xb9t 0x3t
        0xc5t 0x3t
        0xbft 0x3t
        0xc5t 0x3t
        0xc9t 0x3t
        0xcft 0x3t
        0xb2t 0x3t
        0xb8t 0x3t
        0xa5t 0x3t
        0xd2t 0x3t
        0xd2t 0x3t
        0xc6t 0x3t
        0xc0t 0x3t
        0xd7t 0x3t
        0xd8t 0x3t
        0xd9t 0x3t
        0xdat 0x3t
        0xdbt 0x3t
        0xdct 0x3t
        0xddt 0x3t
        0xdet 0x3t
        0xdft 0x3t
        0xe0t 0x3t
        0xe1t 0x3t
        0xe2t 0x3t
        0xe3t 0x3t
        0xe4t 0x3t
        0xe5t 0x3t
        0xe6t 0x3t
        0xe7t 0x3t
        0xe8t 0x3t
        0xe9t 0x3t
        0xeat 0x3t
        0xebt 0x3t
        0xect 0x3t
        0xedt 0x3t
        0xeet 0x3t
        0xeft 0x3t
        0xbat 0x3t
        0xc1t 0x3t
        0xc2t 0x3t
        0xf3t 0x3t
        0x98t 0x3t
        0xb5t 0x3t
        0xf6t 0x3t
        0xf7t 0x3t
        0xf8t 0x3t
        0xa3t 0x3t
        0xfat 0x3t
        0xfbt 0x3t
        0xfct 0x3t
        0xfdt 0x3t
        0xfet 0x3t
        0xfft 0x3t
        0x15t 0x4t
        0x15t 0x4t
        0x2t 0x4t
        0x13t 0x4t
        0x4t 0x4t
        0x5t 0x4t
        0x6t 0x4t
        0x6t 0x4t
        0x8t 0x4t
        0x9t 0x4t
        0xat 0x4t
        0xbt 0x4t
        0x1at 0x4t
        0x18t 0x4t
        0x23t 0x4t
        0xft 0x4t
        0x10t 0x4t
        0x11t 0x4t
        0x12t 0x4t
        0x13t 0x4t
        0x14t 0x4t
        0x15t 0x4t
        0x16t 0x4t
        0x17t 0x4t
        0x18t 0x4t
        0x18t 0x4t
        0x1at 0x4t
        0x1bt 0x4t
        0x1ct 0x4t
        0x1dt 0x4t
        0x1et 0x4t
        0x1ft 0x4t
        0x20t 0x4t
        0x21t 0x4t
        0x22t 0x4t
        0x23t 0x4t
        0x24t 0x4t
        0x25t 0x4t
        0x26t 0x4t
        0x27t 0x4t
        0x28t 0x4t
        0x29t 0x4t
        0x2at 0x4t
        0x2bt 0x4t
        0x2ct 0x4t
        0x2dt 0x4t
        0x2et 0x4t
        0x2ft 0x4t
        0x30t 0x4t
        0x31t 0x4t
        0x32t 0x4t
        0x33t 0x4t
        0x34t 0x4t
        0x35t 0x4t
        0x36t 0x4t
        0x37t 0x4t
        0x38t 0x4t
        0x38t 0x4t
        0x3at 0x4t
        0x3bt 0x4t
        0x3ct 0x4t
        0x3dt 0x4t
        0x3et 0x4t
        0x3ft 0x4t
        0x40t 0x4t
        0x41t 0x4t
        0x42t 0x4t
        0x43t 0x4t
        0x44t 0x4t
        0x45t 0x4t
        0x46t 0x4t
        0x47t 0x4t
        0x48t 0x4t
        0x49t 0x4t
        0x4at 0x4t
        0x4bt 0x4t
        0x4ct 0x4t
        0x4dt 0x4t
        0x4et 0x4t
        0x4ft 0x4t
        0x35t 0x4t
        0x35t 0x4t
        0x52t 0x4t
        0x33t 0x4t
        0x54t 0x4t
        0x55t 0x4t
        0x56t 0x4t
        0x56t 0x4t
        0x58t 0x4t
        0x59t 0x4t
        0x5at 0x4t
        0x5bt 0x4t
        0x3at 0x4t
        0x38t 0x4t
        0x43t 0x4t
        0x5ft 0x4t
        0x60t 0x4t
        0x61t 0x4t
        0x62t 0x4t
        0x63t 0x4t
        0x64t 0x4t
        0x65t 0x4t
        0x66t 0x4t
        0x67t 0x4t
        0x68t 0x4t
        0x69t 0x4t
        0x6at 0x4t
        0x6bt 0x4t
        0x6ct 0x4t
        0x6dt 0x4t
        0x6et 0x4t
        0x6ft 0x4t
        0x70t 0x4t
        0x71t 0x4t
        0x72t 0x4t
        0x73t 0x4t
        0x74t 0x4t
        0x75t 0x4t
        0x74t 0x4t
        0x75t 0x4t
        0x78t 0x4t
        0x79t 0x4t
        0x7at 0x4t
        0x7bt 0x4t
        0x7ct 0x4t
        0x7dt 0x4t
        0x7et 0x4t
        0x7ft 0x4t
        0x80t 0x4t
        0x81t 0x4t
        0x82t 0x4t
        0x83t 0x4t
        0x84t 0x4t
        0x85t 0x4t
        0x86t 0x4t
        0x87t 0x4t
        0x88t 0x4t
        0x89t 0x4t
        0x8at 0x4t
        0x8bt 0x4t
        0x8ct 0x4t
        0x8dt 0x4t
        0x8et 0x4t
        0x8ft 0x4t
        0x90t 0x4t
        0x91t 0x4t
        0x92t 0x4t
        0x93t 0x4t
        0x94t 0x4t
        0x95t 0x4t
        0x96t 0x4t
        0x97t 0x4t
        0x98t 0x4t
        0x99t 0x4t
        0x9at 0x4t
        0x9bt 0x4t
        0x9ct 0x4t
        0x9dt 0x4t
        0x9et 0x4t
        0x9ft 0x4t
        0xa0t 0x4t
        0xa1t 0x4t
        0xa2t 0x4t
        0xa3t 0x4t
        0xa4t 0x4t
        0xa5t 0x4t
        0xa6t 0x4t
        0xa7t 0x4t
        0xa8t 0x4t
        0xa9t 0x4t
        0xaat 0x4t
        0xabt 0x4t
        0xact 0x4t
        0xadt 0x4t
        0xaet 0x4t
        0xaft 0x4t
        0xb0t 0x4t
        0xb1t 0x4t
        0xb2t 0x4t
        0xb3t 0x4t
        0xb4t 0x4t
        0xb5t 0x4t
        0xb6t 0x4t
        0xb7t 0x4t
        0xb8t 0x4t
        0xb9t 0x4t
        0xbat 0x4t
        0xbbt 0x4t
        0xbct 0x4t
        0xbdt 0x4t
        0xbet 0x4t
        0xbft 0x4t
        0xc0t 0x4t
        0x16t 0x4t
        0x36t 0x4t
        0xc3t 0x4t
        0xc4t 0x4t
        0xc5t 0x4t
        0xc6t 0x4t
        0xc7t 0x4t
        0xc8t 0x4t
        0xc9t 0x4t
        0xcat 0x4t
        0xcbt 0x4t
        0xcct 0x4t
        0xcdt 0x4t
        0xcet 0x4t
        0xcft 0x4t
        0x10t 0x4t
        0x30t 0x4t
        0x10t 0x4t
        0x30t 0x4t
        0xd4t 0x4t
        0xd5t 0x4t
        0x15t 0x4t
        0x35t 0x4t
        0xd8t 0x4t
        0xd9t 0x4t
        0xd8t 0x4t
        0xd9t 0x4t
        0x16t 0x4t
        0x36t 0x4t
        0x17t 0x4t
        0x37t 0x4t
        0xe0t 0x4t
        0xe1t 0x4t
        0x18t 0x4t
        0x38t 0x4t
        0x18t 0x4t
        0x38t 0x4t
        0x1et 0x4t
        0x3et 0x4t
        0xe8t 0x4t
        0xe9t 0x4t
        0xe8t 0x4t
        0xe9t 0x4t
        0x2dt 0x4t
        0x4dt 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x23t 0x4t
        0x43t 0x4t
        0x27t 0x4t
        0x47t 0x4t
        0xf6t 0x4t
        0xf7t 0x4t
        0x2bt 0x4t
        0x4bt 0x4t
        0xfat 0x4t
        0xfbt 0x4t
        0xfct 0x4t
        0xfdt 0x4t
        0xfet 0x4t
        0xfft 0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "dicTypeId"

    .prologue
    const/16 v1, 0x20

    .line 112
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 41
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    .line 486
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mLookedUpString:[C

    .line 113
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->clearDictionary()V

    .line 115
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    .line 116
    iput p2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    .line 117
    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/ExpandableDictionary;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/inputmethod/latin/ExpandableDictionary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    return p1
.end method

.method private addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"
    .parameter "addFrequency"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 382
    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v1

    .line 383
    .local v1, firstWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v5, p2, v7, v8}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 384
    .local v4, secondWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 385
    .local v0, bigram:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 386
    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 387
    iget-object v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 399
    :cond_1
    iget-object v5, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    invoke-direct {v6, v4, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 400
    .end local p3
    :goto_0
    return p3

    .line 389
    .restart local p3
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 390
    .local v3, nw:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    if-ne v5, v4, :cond_3

    .line 391
    if-eqz p4, :cond_4

    .line 392
    invoke-virtual {v3, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->addFrequency(I)I

    move-result p3

    goto :goto_0

    .line 394
    :cond_4
    invoke-virtual {v3, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->setFrequency(I)I

    move-result p3

    goto :goto_0
.end method

.method private addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;IILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V
    .locals 12
    .parameter "children"
    .parameter "word"
    .parameter "depth"
    .parameter "frequency"
    .parameter "parentNode"

    .prologue
    .line 162
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 163
    .local v11, wordLength:I
    if-gt v11, p3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 166
    .local v7, c:C
    iget v8, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 167
    .local v8, childrenLength:I
    const/4 v6, 0x0

    .line 168
    .local v6, childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 169
    iget-object v1, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v10, v1, v9

    .line 170
    .local v10, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v1, v10, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v1, v7, :cond_4

    .line 171
    move-object v6, v10

    .line 175
    .end local v10           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    if-nez v6, :cond_3

    .line 176
    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .end local v6           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V

    .line 177
    .restart local v6       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iput-char v7, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    .line 178
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 179
    invoke-virtual {p1, v6}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->add(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 181
    :cond_3
    add-int/lit8 v1, p3, 0x1

    if-ne v11, v1, :cond_5

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    .line 184
    iget v1, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    .line 185
    iget v1, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const/16 v1, 0xff

    iput v1, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    goto :goto_0

    .line 168
    .restart local v10       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 188
    .end local v10           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_5
    iget-object v1, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-nez v1, :cond_6

    .line 189
    new-instance v1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v1, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 191
    :cond_6
    iget-object v2, v6, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object v3, p2

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;IILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    goto :goto_0
.end method

.method private static computeSkippedWordFinalFreq(III)I
    .locals 2
    .parameter "freq"
    .parameter "snr"
    .parameter "inputLength"

    .prologue
    .line 243
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 244
    mul-int v0, p0, p1

    add-int/lit8 v1, p2, -0x2

    mul-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    div-int/2addr v0, v1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reverseLookUp(Ljava/util/LinkedList;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 10
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;",
            ">;",
            "Lcom/android/inputmethod/latin/Dictionary$WordCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, terminalNodes:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;

    .line 498
    .local v8, nextWord:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    iget-object v9, v8, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->mWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 499
    .local v9, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    invoke-virtual {v8}, Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;->getFrequency()I

    move-result v4

    .line 500
    .local v4, freq:I
    const/16 v2, 0x20

    .line 502
    .local v2, index:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 503
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mLookedUpString:[C

    iget-char v1, v9, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    aput-char v1, v0, v2

    .line 504
    iget-object v9, v9, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 505
    if-nez v9, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mLookedUpString:[C

    rsub-int/lit8 v3, v2, 0x20

    iget v5, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    sget-object v6, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    goto :goto_0

    .line 510
    .end local v2           #index:I
    .end local v4           #freq:I
    .end local v8           #nextWord:Lcom/android/inputmethod/latin/ExpandableDictionary$NextWord;
    .end local v9           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_1
    return-void
.end method

.method private runBigramReverseLookUp(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 5
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v0

    .line 453
    .local v0, prevWord:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->reverseLookUp(Ljava/util/LinkedList;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 456
    :cond_0
    return-void
.end method

.method private searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 7
    .parameter "children"
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 525
    iget v0, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 526
    .local v0, count:I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 527
    .local v1, currentChar:C
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 528
    iget-object v5, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v3, v5, v2

    .line 529
    .local v3, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v5, v1, :cond_1

    .line 530
    add-int/lit8 v5, p4, -0x1

    if-ne p3, v5, :cond_0

    .line 531
    iget-boolean v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    if-eqz v5, :cond_1

    .line 542
    .end local v3           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :goto_1
    return-object v3

    .line 535
    .restart local v3       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_0
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-eqz v5, :cond_1

    .line 536
    iget-object v5, v3, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6, p4}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v4

    .line 537
    .local v4, returnNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-eqz v4, :cond_1

    move-object v3, v4

    goto :goto_1

    .line 527
    .end local v4           #returnNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    .end local v3           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .locals 8
    .parameter "children"
    .parameter "word"
    .parameter "depth"
    .parameter "parentNode"

    .prologue
    .line 408
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 409
    .local v5, wordLength:I
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 411
    .local v0, c:C
    iget v2, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    .line 412
    .local v2, childrenLength:I
    const/4 v1, 0x0

    .line 413
    .local v1, childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 414
    iget-object v6, p1, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v4, v6, v3

    .line 415
    .local v4, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iget-char v6, v4, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    if-ne v6, v0, :cond_2

    .line 416
    move-object v1, v4

    .line 420
    .end local v4           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_0
    if-nez v1, :cond_1

    .line 421
    new-instance v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .end local v1           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V

    .line 422
    .restart local v1       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    iput-char v0, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    .line 423
    iput-object p4, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mParent:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    .line 424
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->add(Lcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 426
    :cond_1
    add-int/lit8 v6, p3, 0x1

    if-ne v5, v6, :cond_3

    .line 428
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    .line 434
    .end local v1           #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :goto_1
    return-object v1

    .line 413
    .restart local v1       #childNode:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .restart local v4       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    .end local v4           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    :cond_3
    iget-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    if-nez v6, :cond_4

    .line 432
    new-instance v6, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v6}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 434
    :cond_4
    iget-object v6, v1, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchWord(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/android/inputmethod/latin/ExpandableDictionary$Node;)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v1

    goto :goto_1
.end method

.method private static toLowerCase(C)C
    .locals 2
    .parameter "c"

    .prologue
    .line 560
    move v0, p0

    .line 561
    .local v0, baseChar:C
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 562
    sget-object v1, Lcom/android/inputmethod/latin/ExpandableDictionary;->BASE_CHARS:[C

    aget-char v0, v1, p0

    .line 564
    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 565
    or-int/lit8 v1, v0, 0x20

    int-to-char v0, v1

    .line 569
    .end local v0           #baseChar:C
    :cond_1
    :goto_0
    return v0

    .line 566
    .restart local v0       #baseChar:C
    :cond_2
    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 567
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected addBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public addWord(Ljava/lang/String;I)V
    .locals 6
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWordRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/String;IILcom/android/inputmethod/latin/ExpandableDictionary$Node;)V

    .line 158
    return-void
.end method

.method protected final blockingReloadDictionaryIfRequired()V
    .locals 0

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    .line 482
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->waitForDictionaryLoading()V

    .line 483
    return-void
.end method

.method protected clearDictionary()V
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    .line 547
    return-void
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 1
    .parameter "codes"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-direct {p0, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->runBigramReverseLookUp(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 464
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMaxWordLength()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x20

    return v0
.end method

.method public getRequiresReload()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    return v0
.end method

.method protected getWordFrequency(Ljava/lang/CharSequence;)I
    .locals 4
    .parameter "word"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->searchNode(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    move-result-object v0

    .line 237
    .local v0, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    goto :goto_0
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .locals 2
    .parameter "codes"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final getWordsInner(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .locals 10
    .parameter "codes"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    .line 209
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    array-length v0, v0

    iget v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    .line 211
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v8, v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    invoke-virtual {p1, v8}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v1

    aput-object v1, v0, v8

    .line 211
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mMaxDepth:I

    .line 215
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    const/4 v8, -0x1

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    move v7, v4

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 216
    .end local v8           #i:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    iget v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    if-ge v8, v0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRoots:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    iget-object v3, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mWordBuilder:[C

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    move v7, v4

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 216
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 219
    :cond_2
    return-void
.end method

.method protected getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 31
    .parameter "roots"
    .parameter "codes"
    .parameter "word"
    .parameter "depth"
    .parameter "completion"
    .parameter "snr"
    .parameter "inputIndex"
    .parameter "skipPos"
    .parameter "callback"

    .prologue
    .line 273
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mLength:I

    move/from16 v22, v0

    .line 274
    .local v22, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move/from16 v21, v0

    .line 276
    .local v21, codeSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mMaxDepth:I

    move/from16 v0, p4

    if-le v0, v2, :cond_1

    .line 361
    :cond_0
    return-void

    .line 280
    :cond_1
    move/from16 v0, v21

    move/from16 v1, p7

    if-gt v0, v1, :cond_5

    .line 281
    const/16 v24, 0x0

    .line 286
    .local v24, currentChars:[I
    :goto_0
    const/16 v26, 0x0

    .local v26, i:I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 287
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;->mData:[Lcom/android/inputmethod/latin/ExpandableDictionary$Node;

    aget-object v29, v2, v26

    .line 288
    .local v29, node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    move-object/from16 v0, v29

    iget-char v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mCode:C

    move/from16 v19, v0

    .line 289
    .local v19, c:C
    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v28

    .line 290
    .local v28, lowerC:C
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mTerminal:Z

    move/from16 v30, v0

    .line 291
    .local v30, terminal:Z
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mChildren:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;

    move-object/from16 v20, v0

    .line 292
    .local v20, children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/inputmethod/latin/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v25, v0

    .line 293
    .local v25, freq:I
    if-nez p5, :cond_2

    if-nez v24, :cond_7

    .line 294
    :cond_2
    aput-char v19, p3, p4

    .line 295
    if-eqz v30, :cond_3

    .line 297
    if-gez p8, :cond_6

    .line 298
    mul-int v6, v25, p6

    .line 302
    .local v6, finalFreq:I
    :goto_2
    const/4 v4, 0x0

    add-int/lit8 v5, p4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    sget-object v8, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    invoke-interface/range {v2 .. v8}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    .end local v6           #finalFreq:I
    :cond_3
    if-eqz v20, :cond_4

    .line 308
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 286
    :cond_4
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 283
    .end local v19           #c:C
    .end local v20           #children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    .end local v24           #currentChars:[I
    .end local v25           #freq:I
    .end local v26           #i:I
    .end local v28           #lowerC:C
    .end local v29           #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .end local v30           #terminal:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mCodes:[[I

    aget-object v24, v2, p7

    .restart local v24       #currentChars:[I
    goto :goto_0

    .line 300
    .restart local v19       #c:C
    .restart local v20       #children:Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;
    .restart local v25       #freq:I
    .restart local v26       #i:I
    .restart local v28       #lowerC:C
    .restart local v29       #node:Lcom/android/inputmethod/latin/ExpandableDictionary$Node;
    .restart local v30       #terminal:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move/from16 v0, v25

    move/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v6

    .restart local v6       #finalFreq:I
    goto :goto_2

    .line 311
    .end local v6           #finalFreq:I
    :cond_7
    const/16 v2, 0x27

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    const/4 v2, 0x0

    aget v2, v24, v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_9

    :cond_8
    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_a

    .line 314
    :cond_9
    aput-char v19, p3, p4

    .line 315
    if-eqz v20, :cond_4

    .line 316
    add-int/lit8 v11, p4, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_3

    .line 321
    :cond_a
    if-ltz p8, :cond_e

    const/16 v18, 0x1

    .line 322
    .local v18, alternativesSize:I
    :goto_4
    const/16 v27, 0x0

    .local v27, j:I
    :goto_5
    move/from16 v0, v27

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 323
    if-lez v27, :cond_f

    const/16 v17, 0x1

    .line 324
    .local v17, addedAttenuation:I
    :goto_6
    aget v23, v24, v27

    .line 325
    .local v23, currentChar:I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_4

    .line 328
    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 329
    :cond_b
    aput-char v19, p3, p4

    .line 331
    add-int/lit8 v2, p7, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_11

    .line 332
    if-eqz v30, :cond_c

    .line 333
    add-int/lit8 v2, p4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->same([CILjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 336
    if-gez p8, :cond_10

    .line 337
    mul-int v2, v25, p6

    mul-int v2, v2, v17

    mul-int/lit8 v6, v2, 0x2

    .line 343
    .restart local v6       #finalFreq:I
    :goto_7
    const/4 v4, 0x0

    add-int/lit8 v5, p4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mDicTypeId:I

    sget-object v8, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    invoke-interface/range {v2 .. v8}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 347
    .end local v6           #finalFreq:I
    :cond_c
    if-eqz v20, :cond_d

    .line 348
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x1

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    .line 322
    :cond_d
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 321
    .end local v17           #addedAttenuation:I
    .end local v18           #alternativesSize:I
    .end local v23           #currentChar:I
    .end local v27           #j:I
    :cond_e
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v18, v0

    goto :goto_4

    .line 323
    .restart local v18       #alternativesSize:I
    .restart local v27       #j:I
    :cond_f
    const/16 v17, 0x2

    goto :goto_6

    .line 340
    .restart local v17       #addedAttenuation:I
    .restart local v23       #currentChar:I
    :cond_10
    mul-int v2, p6, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mInputLength:I

    move/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v6

    .restart local v6       #finalFreq:I
    goto :goto_7

    .line 352
    .end local v6           #finalFreq:I
    :cond_11
    if-eqz v20, :cond_d

    .line 353
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x0

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordsRec(Lcom/android/inputmethod/latin/ExpandableDictionary$NodeArray;Lcom/android/inputmethod/latin/WordComposer;[CIZIIILcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_8
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "word"

    .prologue
    const/4 v0, 0x0

    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    :try_start_1
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 226
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v2, :cond_2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 227
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionary()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method reloadDictionaryIfRequired()Z
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    monitor-exit v1

    return v0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "word1"
    .parameter "word2"
    .parameter "frequency"

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public setRequiresReload(Z)V
    .locals 2
    .parameter "reload"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mRequiresReload:Z

    .line 129
    new-instance v0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary;Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->start()V

    .line 131
    :cond_0
    return-void
.end method

.method waitForDictionaryLoading()V
    .locals 2

    .prologue
    .line 471
    :goto_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_0

    .line 473
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    goto :goto_0

    .line 478
    :cond_0
    return-void
.end method
