import { Transition } from "@headlessui/react";
import { useState } from "react";
import ClearIcon from "./clear_icon";
import SearchIcon from "./search_icon";

const Search = () => {
  const [searchInput, setSearchInput] = useState("");

  return (
    <form role="searchbox">
      <div className="form-control">
        <label className="relative">
          <input
            type="search"
            name="search"
            id="search"
            placeholder="eg. Chicken Breast"
            className="input input-bordered w-full px-16 peer ring-primary"
            value={searchInput}
            onChange={e => setSearchInput(e.target.value)}
          />
          <SearchIcon className="text-gray-600 peer-focus:text-blue-600 absolute inset-y-0 left-4 my-auto" />
          <Transition
            as="button"
            type="reset"
            show={!!searchInput}
            className="absolute inset-y-0 my-auto right-4 text-gray-600 peer-focus:text-blue-600"
            enter="transition-transform"
            enterFrom="scale-0"
            enterTo="scale-100"
            leave="transition-transform"
            leaveFrom="scale-100"
            leaveTo="scale-0"
            onClick={(e: React.MouseEvent<HTMLButtonElement>) => {
              e.preventDefault();
              setSearchInput("");
            }}
          >
            <ClearIcon />
          </Transition>
        </label>
      </div>
    </form>
  );
};

export default Search;
