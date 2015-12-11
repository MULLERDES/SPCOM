using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WCarDump.Models
{
    [Serializable]
    public class CTrashOrder:IEnumerable, IEnumerator
    {
        public List<CTrashItem> Items { get; set; }

        public decimal Price
        {
            get
            {
                decimal ret = 0;
                foreach (var item in Items)
                {
                    ret += item.Price;
                }
                return ret;
            }
        }
        int index = -1;
        public object Current
        {
            get
            {
                return Items[index];
            }
        }

        public CTrashOrder()
        {
             Items = new List<CTrashItem>();
            
        }


        public CTrashItem AddProduct(Product prod,int count)
        {
            bool contains = false;
            CTrashItem containsItem = null;
            foreach (var item in Items)
            {
                if (item.Product.GUID == prod.GUID)
                {
                    contains = true;
                    containsItem = item;
                }
            }
            if (!contains)
            {
                containsItem = new CTrashItem(prod, count);
                Items.Add(containsItem);
            }
            else
            {
                containsItem.Count = count;
            }
            return containsItem;
        }


        public void RemoveProduct(string _guid)
        {
            CTrashItem tmp=null;
            foreach (var item in Items)
            {
                if (item.Product.GUID == _guid)
                {
                    tmp = item;
                    break;
                }
            }
            if (tmp!=null)
            {
                Items.Remove(tmp);
            }
        }

        public void RemoveMod(string _guid, int modid)
        {
            CTrashItem tmp = null;
            foreach (var item in Items)
            {
                if (item.Product.GUID == _guid)
                {
                    tmp = item;
                    break;
                }
            }
            if (tmp != null)
            {
                ProductModifiaction tmod = null;
                foreach (var item in tmp.Modifications)
                {
                    if (item.Id==modid)
                    {
                        tmod = item;
                        break;
                    }

                }
                if (tmod!=null)
                {
                    tmp.Modifications.Remove(tmod);
                }
            }
        }

        public void AddModification(Product prod, int count, ProductModifiaction mod)
        {
            bool contains = false;
            CTrashItem containsItem = null;
            foreach (var item in Items)
            {
                if (item.Product.GUID == prod.GUID)
                {
                    contains = true;
                    containsItem = item;
                }
            }
            if (!contains)
            {
                containsItem = new CTrashItem(prod, count);
                Items.Add(containsItem);
                containsItem.AddMod(mod);
            }
            else
            {
                containsItem.AddMod(mod);
            }
           
        }

        public IEnumerator GetEnumerator()
        {
            return this;
        }

        public bool MoveNext()
        {
            if (index==Items.Count-1)
            {
                Reset();
                return false;
            }

            index++;
            return true;
        }

        public void Reset()
        {
            index = -1;
        }
    }

    [Serializable]
    public class CTrashItem
    {
        public int Id
        {
            get { return Product == null ? -1 : Product.Id; }
        }
        public int Count {
            get; set;
        }
        public decimal Price
        {
            get
            {
                decimal ret = 0;
                if (Product != null)
                {
                    ret += Product.Price;
                    foreach (var item in Modifications)
                    {
                        if (item.ProductId == Product.Id)
                            ret += item.Price;
                    }
                }
                return ret*Count;
            }
        }

        public string PriceString
        { get {  return String.Format("{0:0.00}", Price); } }
        
        

        public string Name { get
            {
                return Product == null ? "null" : Product.Name;
            }
        }
        
        public Product Product { get; set; }
        public List<ProductModifiaction> Modifications
        {
            get; set;
        }
        public CTrashItem()
        {
            Modifications = new List<ProductModifiaction>();
        }

        public CTrashItem(Product pr, int count) : this()
        {
            Product = pr;
            Count = count;
        }
        public void AddMod(ProductModifiaction mod)
        {
            if (Modifications.Find(tf => tf.Id == mod.Id) == null)
            {
                Modifications.Add(mod);
            }
        }
    }
}