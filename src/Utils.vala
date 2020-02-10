// Common business logic which does not directly change display properties.
public class Tardis.Utils {

    public static bool array_not_equal(string[] arr1, string[] arr2) {
        if (arr1.length != arr2.length) {
            return false;
        }

        foreach (string element in arr1) {
            if (!Tardis.Utils.contains_str(arr2, element)) {
                return false;
            }
        }

        return true;
    }

    // Check if list contains target
    public static bool contains_str (string[] list, string target) {
        foreach (string element in list) {
            if (element == target) {
                return true;
            }
        }

        return false;
    }

    // Remove items from list which are in exclude_list
    public static string[] remove_from (string[] list, string[] exclude_list) {
        if (exclude_list.length == 0) {
            return list;
        }

        string[] new_list = new string[list.length - exclude_list.length];
        foreach (string element in list) {
            if (Tardis.Utils.contains_str (exclude_list, element)) {
                continue;
            }

            new_list += element;
        }

        return new_list;
    }
}
